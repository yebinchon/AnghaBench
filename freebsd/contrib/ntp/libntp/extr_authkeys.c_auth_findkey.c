
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savekey {scalar_t__ keyid; struct savekey* hlink; } ;
typedef struct savekey symkey ;
typedef scalar_t__ keyid_t ;


 size_t KEYHASH (scalar_t__) ;
 struct savekey** key_hash ;

struct savekey *
auth_findkey(
 keyid_t id
 )
{
 symkey * sk;

 for (sk = key_hash[KEYHASH(id)]; sk != ((void*)0); sk = sk->hlink)
  if (id == sk->keyid)
   return sk;
 return ((void*)0);
}
