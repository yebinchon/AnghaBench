
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_7__ {int * keytab; } ;
struct TYPE_8__ {int flags; int refcnt; int mode; int uid; int gid; int mutex; scalar_t__ renew_life; scalar_t__ tkt_life; TYPE_1__ key; int * creds; int * server; int * client; int * name; int uuid; struct TYPE_8__* next; } ;
typedef TYPE_2__ kcm_ccache_data ;
typedef TYPE_2__* kcm_ccache ;


 int HEIMDAL_MUTEX_destroy (int *) ;
 int HEIMDAL_MUTEX_init (int *) ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_FLAGS_VALID ;
 scalar_t__ KRB5_CC_NOMEM ;
 scalar_t__ KRB5_CC_WRITE ;
 int RAND_bytes (int ,int) ;
 int S_IRUSR ;
 int S_IWUSR ;
 TYPE_2__* ccache_head ;
 int ccache_mutex ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ strcmp (int *,char const*) ;
 int * strdup (char const*) ;

__attribute__((used)) static krb5_error_code
kcm_ccache_alloc(krb5_context context,
   const char *name,
   kcm_ccache *ccache)
{
    kcm_ccache slot = ((void*)0), p;
    krb5_error_code ret;
    int new_slot = 0;

    *ccache = ((void*)0);


    HEIMDAL_MUTEX_lock(&ccache_mutex);
    ret = 0;
    for (p = ccache_head; p != ((void*)0); p = p->next) {
 if (p->flags & KCM_FLAGS_VALID) {
     if (strcmp(p->name, name) == 0) {
  ret = KRB5_CC_WRITE;
  break;
     }
 } else if (slot == ((void*)0))
     slot = p;
    }

    if (ret)
 goto out;




    if (slot == ((void*)0)) {
 slot = (kcm_ccache_data *)malloc(sizeof(*slot));
 if (slot == ((void*)0)) {
     ret = KRB5_CC_NOMEM;
     goto out;
 }
 slot->next = ccache_head;
 HEIMDAL_MUTEX_init(&slot->mutex);
 new_slot = 1;
    }

    RAND_bytes(slot->uuid, sizeof(slot->uuid));

    slot->name = strdup(name);
    if (slot->name == ((void*)0)) {
 ret = KRB5_CC_NOMEM;
 goto out;
    }

    slot->refcnt = 1;
    slot->flags = KCM_FLAGS_VALID;
    slot->mode = S_IRUSR | S_IWUSR;
    slot->uid = -1;
    slot->gid = -1;
    slot->client = ((void*)0);
    slot->server = ((void*)0);
    slot->creds = ((void*)0);
    slot->key.keytab = ((void*)0);
    slot->tkt_life = 0;
    slot->renew_life = 0;

    if (new_slot)
 ccache_head = slot;

    *ccache = slot;

    HEIMDAL_MUTEX_unlock(&ccache_mutex);
    return 0;

out:
    HEIMDAL_MUTEX_unlock(&ccache_mutex);
    if (new_slot && slot != ((void*)0)) {
 HEIMDAL_MUTEX_destroy(&slot->mutex);
 free(slot);
    }
    return ret;
}
