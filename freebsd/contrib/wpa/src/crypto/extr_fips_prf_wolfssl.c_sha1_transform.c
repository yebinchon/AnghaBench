
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** digest; } ;
typedef TYPE_1__ wc_Sha ;
typedef int u8 ;
typedef void* u32 ;
typedef int sha ;


 int os_memset (TYPE_1__*,int ,int) ;
 int wc_ShaUpdate (TYPE_1__*,int const*,int) ;

__attribute__((used)) static void sha1_transform(u32 *state, const u8 data[64])
{
 wc_Sha sha;

 os_memset(&sha, 0, sizeof(sha));
 sha.digest[0] = state[0];
 sha.digest[1] = state[1];
 sha.digest[2] = state[2];
 sha.digest[3] = state[3];
 sha.digest[4] = state[4];
 wc_ShaUpdate(&sha, data, 64);
 state[0] = sha.digest[0];
 state[1] = sha.digest[1];
 state[2] = sha.digest[2];
 state[3] = sha.digest[3];
 state[4] = sha.digest[4];
}
