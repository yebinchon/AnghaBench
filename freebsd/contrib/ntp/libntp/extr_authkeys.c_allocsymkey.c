
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* u_short ;
typedef int u_long ;
typedef int u_char ;
struct TYPE_9__ {size_t secretsize; int lifetime; int * keyacclist; int * secret; void* type; void* flags; int keyid; } ;
typedef TYPE_1__ symkey ;
typedef int keyid_t ;
struct TYPE_10__ {int f; } ;
typedef int KeyAccT ;


 int DEBUG_ENSURE (int ) ;
 size_t KEYHASH (int ) ;
 int LINK_SLIST (TYPE_1__*,TYPE_1__*,int ) ;
 int LINK_TAIL_DLIST (int ,TYPE_1__*,TYPE_2__) ;
 int UNLINK_HEAD_SLIST (TYPE_1__*,int ,int ) ;
 int auth_moremem (int) ;
 int authfreekeys ;
 int authnumfreekeys ;
 int authnumkeys ;
 int hlink ;
 TYPE_1__** key_hash ;
 int key_listhead ;
 TYPE_2__ llink ;

__attribute__((used)) static void
allocsymkey(
 keyid_t id,
 u_short flags,
 u_short type,
 u_long lifetime,
 size_t secretsize,
 u_char * secret,
 KeyAccT * ka
 )
{
 symkey * sk;
 symkey ** bucket;

 bucket = &key_hash[KEYHASH(id)];


 if (authnumfreekeys < 1)
  auth_moremem(-1);
 UNLINK_HEAD_SLIST(sk, authfreekeys, llink.f);
 DEBUG_ENSURE(sk != ((void*)0));
 sk->keyid = id;
 sk->flags = flags;
 sk->type = type;
 sk->secretsize = secretsize;
 sk->secret = secret;
 sk->keyacclist = ka;
 sk->lifetime = lifetime;
 LINK_SLIST(*bucket, sk, hlink);
 LINK_TAIL_DLIST(key_listhead, sk, llink);
 authnumfreekeys--;
 authnumkeys++;
}
