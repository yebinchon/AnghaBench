
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_realm {char* realm; struct tr_realm* next; } ;
typedef int krb5_context ;


 int KRB5KDC_ERR_POLICY ;
 struct tr_realm* calloc (int,int) ;
 int free (struct tr_realm*) ;
 int krb5_clear_error_message (int ) ;
 int krb5_enomem (int ) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int
make_path(krb5_context context, struct tr_realm *r,
   const char *from, const char *to)
{
    struct tr_realm *tmp;
    const char *p;

    if(strlen(from) < strlen(to)){
 const char *str;
 str = from;
 from = to;
 to = str;
    }

    if(strcmp(from + strlen(from) - strlen(to), to) == 0){
 p = from;
 while(1){
     p = strchr(p, '.');
     if(p == ((void*)0)) {
  krb5_clear_error_message (context);
  return KRB5KDC_ERR_POLICY;
     }
     p++;
     if(strcmp(p, to) == 0)
  break;
     tmp = calloc(1, sizeof(*tmp));
     if(tmp == ((void*)0))
  return krb5_enomem(context);
     tmp->next = r->next;
     r->next = tmp;
     tmp->realm = strdup(p);
     if(tmp->realm == ((void*)0)){
  r->next = tmp->next;
  free(tmp);
  return krb5_enomem(context);
     }
 }
    }else if(strncmp(from, to, strlen(to)) == 0){
 p = from + strlen(from);
 while(1){
     while(p >= from && *p != '/') p--;
     if(p == from)
  return KRB5KDC_ERR_POLICY;

     if(strncmp(to, from, p - from) == 0)
  break;
     tmp = calloc(1, sizeof(*tmp));
     if(tmp == ((void*)0))
  return krb5_enomem(context);
     tmp->next = r->next;
     r->next = tmp;
     tmp->realm = malloc(p - from + 1);
     if(tmp->realm == ((void*)0)){
  r->next = tmp->next;
  free(tmp);
  return krb5_enomem(context);
     }
     memcpy(tmp->realm, from, p - from);
     tmp->realm[p - from] = '\0';
     p--;
 }
    } else {
 krb5_clear_error_message (context);
 return KRB5KDC_ERR_POLICY;
    }

    return 0;
}
