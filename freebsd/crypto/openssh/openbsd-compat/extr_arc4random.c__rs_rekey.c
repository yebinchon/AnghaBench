
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 scalar_t__ IVSZ ;
 scalar_t__ KEYSZ ;
 size_t MIN (size_t,scalar_t__) ;
 scalar_t__ RSBUFSZ ;
 int _rs_init (int *,scalar_t__) ;
 int chacha_encrypt_bytes (int *,int *,int *,scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;
 int rs ;
 int * rs_buf ;
 scalar_t__ rs_have ;

__attribute__((used)) static inline void
_rs_rekey(u_char *dat, size_t datlen)
{

 memset(rs_buf, 0,RSBUFSZ);


 chacha_encrypt_bytes(&rs, rs_buf, rs_buf, RSBUFSZ);

 if (dat) {
  size_t i, m;

  m = MIN(datlen, KEYSZ + IVSZ);
  for (i = 0; i < m; i++)
   rs_buf[i] ^= dat[i];
 }

 _rs_init(rs_buf, KEYSZ + IVSZ);
 memset(rs_buf, 0, KEYSZ + IVSZ);
 rs_have = RSBUFSZ - KEYSZ - IVSZ;
}
