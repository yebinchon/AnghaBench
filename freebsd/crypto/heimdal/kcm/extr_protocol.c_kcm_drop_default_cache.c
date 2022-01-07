
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcm_default_cache {struct kcm_default_cache* name; struct kcm_default_cache* next; int session; int uid; } ;
typedef int krb5_context ;
typedef int kcm_client ;


 struct kcm_default_cache* default_caches ;
 int free (struct kcm_default_cache*) ;
 int kcm_is_same_session (int *,int ,int ) ;
 scalar_t__ strcmp (struct kcm_default_cache*,char*) ;

__attribute__((used)) static void
kcm_drop_default_cache(krb5_context context, kcm_client *client, char *name)
{
    struct kcm_default_cache **c;

    for (c = &default_caches; *c != ((void*)0); c = &(*c)->next) {
 if (!kcm_is_same_session(client, (*c)->uid, (*c)->session))
     continue;
 if (strcmp((*c)->name, name) == 0) {
     struct kcm_default_cache *h = *c;
     *c = (*c)->next;
     free(h->name);
     free(h);
     break;
 }
    }
}
