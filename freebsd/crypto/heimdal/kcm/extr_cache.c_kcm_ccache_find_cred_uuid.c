
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kcm_creds {int uuid; struct kcm_creds* next; } ;
typedef int krb5_context ;
typedef int kcmuuid_t ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_3__ {struct kcm_creds* creds; } ;


 scalar_t__ memcmp (int ,int ,int) ;

struct kcm_creds *
kcm_ccache_find_cred_uuid(krb5_context context,
     kcm_ccache ccache,
     kcmuuid_t uuid)
{
    struct kcm_creds *c;

    for (c = ccache->creds; c != ((void*)0); c = c->next)
 if (memcmp(c->uuid, uuid, sizeof(c->uuid)) == 0)
     return c;

    return ((void*)0);
}
