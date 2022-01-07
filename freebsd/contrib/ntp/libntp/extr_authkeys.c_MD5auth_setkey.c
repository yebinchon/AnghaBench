
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u_char ;
struct TYPE_3__ {scalar_t__ keyid; int* secret; size_t secretsize; int * keyacclist; scalar_t__ type; } ;
typedef TYPE_1__ symkey ;
typedef scalar_t__ keyid_t ;
typedef int KeyAccT ;


 int DEBUG_ENSURE (int) ;
 int USHRT_MAX ;
 int allocsymkey (scalar_t__,int ,scalar_t__,int ,size_t,int*,int *) ;
 TYPE_1__* auth_findkey (scalar_t__) ;
 int authcache_flush_id (scalar_t__) ;
 int debug ;
 void* emalloc (size_t) ;
 int free (int*) ;
 int keyacc_all_free (int *) ;
 int memcpy (int*,int const*,size_t) ;
 int memset (int*,int ,size_t) ;
 int printf (char*,...) ;
 int strncpy (char*,char const*,size_t) ;

void
MD5auth_setkey(
 keyid_t keyno,
 int keytype,
 const u_char *key,
 size_t secretsize,
 KeyAccT *ka
 )
{
 symkey * sk;
 u_char * secret;

 DEBUG_ENSURE(keytype <= USHRT_MAX);
 DEBUG_ENSURE(secretsize < 4 * 1024);




 sk = auth_findkey(keyno);
 if (sk != ((void*)0) && keyno == sk->keyid) {

  if (((void*)0) != sk->secret) {
   memset(sk->secret, 0, sk->secretsize);
   free(sk->secret);
  }
  sk->secret = emalloc(secretsize + 1);
  sk->type = (u_short)keytype;
  sk->secretsize = secretsize;

  if (ka != sk->keyacclist) {
   keyacc_all_free(sk->keyacclist);
   sk->keyacclist = ka;
  }

  memcpy(sk->secret, key, secretsize);





  authcache_flush_id(keyno);
  return;
 }




 secret = emalloc(secretsize + 1);

 memcpy(secret, key, secretsize);




 allocsymkey(keyno, 0, (u_short)keytype, 0,
      secretsize, secret, ka);
}
