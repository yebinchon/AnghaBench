
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int rs_have; } ;
struct TYPE_3__ {int * rs_buf; int rs_chacha; } ;


 int IVSZ ;
 int KEYSZ ;
 int _rs_init (int *,int) ;
 int chacha_encrypt_bytes (int *,int *,int *,int) ;
 int memset (int *,int ,int) ;
 size_t minimum (size_t,int) ;
 TYPE_2__* rs ;
 TYPE_1__* rsx ;

__attribute__((used)) static inline void
_rs_rekey(u_char *dat, size_t datlen)
{

 memset(rsx->rs_buf, 0, sizeof(rsx->rs_buf));


 chacha_encrypt_bytes(&rsx->rs_chacha, rsx->rs_buf,
     rsx->rs_buf, sizeof(rsx->rs_buf));

 if (dat) {
  size_t i, m;

  m = minimum(datlen, KEYSZ + IVSZ);
  for (i = 0; i < m; i++)
   rsx->rs_buf[i] ^= dat[i];
 }

 _rs_init(rsx->rs_buf, KEYSZ + IVSZ);
 memset(rsx->rs_buf, 0, KEYSZ + IVSZ);
 rs->rs_have = sizeof(rsx->rs_buf) - KEYSZ - IVSZ;
}
