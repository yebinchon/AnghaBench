
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_realm {char* realm; struct tr_realm* next; } ;
typedef int krb5_context ;


 int free_realms (struct tr_realm*) ;
 int make_path (int ,struct tr_realm*,char const*,char const*) ;

__attribute__((used)) static int
make_paths(krb5_context context,
    struct tr_realm *realms, const char *client_realm,
    const char *server_realm)
{
    struct tr_realm *r;
    int ret;
    const char *prev_realm = client_realm;
    const char *next_realm = ((void*)0);
    for(r = realms; r; r = r->next){



 if(r->realm[0] == '\0'){
     while(r->next && r->next->realm[0] == '\0')
  r = r->next;
     if(r->next)
  next_realm = r->next->realm;
     else
  next_realm = server_realm;
     ret = make_path(context, r, prev_realm, next_realm);
     if(ret){
  free_realms(realms);
  return ret;
     }
 }
 prev_realm = r->realm;
    }
    return 0;
}
