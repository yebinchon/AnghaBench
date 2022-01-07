
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_context ;
struct TYPE_6__ {int keyblock; int * keytab; } ;
struct TYPE_7__ {int flags; int uid; int gid; int session; int mutex; scalar_t__ refcnt; int * next; scalar_t__ renew_life; scalar_t__ tkt_life; scalar_t__ mode; TYPE_1__ key; int * name; } ;
typedef TYPE_2__ kcm_ccache_data ;


 int HEIMDAL_MUTEX_destroy (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_ASSERT_VALID (TYPE_2__*) ;
 int KCM_FLAGS_USE_CACHED_KEY ;
 int KCM_FLAGS_USE_KEYTAB ;
 int free (int *) ;
 int kcm_zero_ccache_data_internal (int ,TYPE_2__*) ;
 int krb5_free_keyblock_contents (int ,int *) ;
 int krb5_keyblock_zero (int *) ;
 int krb5_kt_close (int ,int *) ;

__attribute__((used)) static void
kcm_free_ccache_data_internal(krb5_context context,
         kcm_ccache_data *cache)
{
    KCM_ASSERT_VALID(cache);

    if (cache->name != ((void*)0)) {
 free(cache->name);
 cache->name = ((void*)0);
    }

    if (cache->flags & KCM_FLAGS_USE_KEYTAB) {
 krb5_kt_close(context, cache->key.keytab);
 cache->key.keytab = ((void*)0);
    } else if (cache->flags & KCM_FLAGS_USE_CACHED_KEY) {
 krb5_free_keyblock_contents(context, &cache->key.keyblock);
 krb5_keyblock_zero(&cache->key.keyblock);
    }

    cache->flags = 0;
    cache->mode = 0;
    cache->uid = -1;
    cache->gid = -1;
    cache->session = -1;

    kcm_zero_ccache_data_internal(context, cache);

    cache->tkt_life = 0;
    cache->renew_life = 0;

    cache->next = ((void*)0);
    cache->refcnt = 0;

    HEIMDAL_MUTEX_unlock(&cache->mutex);
    HEIMDAL_MUTEX_destroy(&cache->mutex);
}
