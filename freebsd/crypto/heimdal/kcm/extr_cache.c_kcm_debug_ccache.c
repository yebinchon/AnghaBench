
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kcm_creds {struct kcm_creds* next; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int flags; int gid; int uid; int mode; int refcnt; int name; int * server; int * client; struct kcm_creds* creds; struct TYPE_4__* next; } ;


 int KCM_ASSERT_VALID (TYPE_1__*) ;
 int KCM_FLAGS_VALID ;
 TYPE_1__* ccache_head ;
 int free (char*) ;
 int kcm_log (int,char*,...) ;
 int krb5_unparse_name (int ,int *,char**) ;

krb5_error_code kcm_debug_ccache(krb5_context context)
{
    kcm_ccache p;

    for (p = ccache_head; p != ((void*)0); p = p->next) {
 char *cpn = ((void*)0), *spn = ((void*)0);
 int ncreds = 0;
 struct kcm_creds *k;

 if ((p->flags & KCM_FLAGS_VALID) == 0) {
     kcm_log(7, "cache %08x: empty slot");
     continue;
 }

 KCM_ASSERT_VALID(p);

 for (k = p->creds; k != ((void*)0); k = k->next)
     ncreds++;

 if (p->client != ((void*)0))
     krb5_unparse_name(context, p->client, &cpn);
 if (p->server != ((void*)0))
     krb5_unparse_name(context, p->server, &spn);

 kcm_log(7, "cache %08x: name %s refcnt %d flags %04x mode %04o "
  "uid %d gid %d client %s server %s ncreds %d",
  p, p->name, p->refcnt, p->flags, p->mode, p->uid, p->gid,
  (cpn == ((void*)0)) ? "<none>" : cpn,
  (spn == ((void*)0)) ? "<none>" : spn,
  ncreds);

 if (cpn != ((void*)0))
     free(cpn);
 if (spn != ((void*)0))
     free(spn);
    }

    return 0;
}
