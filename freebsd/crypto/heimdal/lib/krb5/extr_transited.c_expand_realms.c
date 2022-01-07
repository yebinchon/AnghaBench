
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_realm {char const* realm; int leading_space; scalar_t__ leading_slash; scalar_t__ trailing_dot; struct tr_realm* next; } ;
typedef int krb5_context ;


 int free (char const*) ;
 int free_realms (struct tr_realm*) ;
 int krb5_enomem (int ) ;
 char* malloc (size_t) ;
 char* realloc (char const*,size_t) ;
 int strlcat (char*,char const*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static int
expand_realms(krb5_context context,
       struct tr_realm *realms, const char *client_realm)
{
    struct tr_realm *r;
    const char *prev_realm = ((void*)0);
    for(r = realms; r; r = r->next){
 if(r->trailing_dot){
     char *tmp;
     size_t len;

     if(prev_realm == ((void*)0))
  prev_realm = client_realm;

     len = strlen(r->realm) + strlen(prev_realm) + 1;

     tmp = realloc(r->realm, len);
     if(tmp == ((void*)0)){
  free_realms(realms);
  return krb5_enomem(context);
     }
     r->realm = tmp;
     strlcat(r->realm, prev_realm, len);
 }else if(r->leading_slash && !r->leading_space && prev_realm){


     char *tmp;
     size_t len = strlen(r->realm) + strlen(prev_realm) + 1;

     tmp = malloc(len);
     if(tmp == ((void*)0)){
  free_realms(realms);
  return krb5_enomem(context);
     }
     strlcpy(tmp, prev_realm, len);
     strlcat(tmp, r->realm, len);
     free(r->realm);
     r->realm = tmp;
 }
 prev_realm = r->realm;
    }
    return 0;
}
