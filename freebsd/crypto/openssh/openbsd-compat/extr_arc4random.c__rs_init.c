
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 size_t IVSZ ;
 size_t KEYSZ ;
 int chacha_ivsetup (int *,int *) ;
 int chacha_keysetup (int *,int *,size_t,int ) ;
 int rs ;

__attribute__((used)) static inline void
_rs_init(u_char *buf, size_t n)
{
 if (n < KEYSZ + IVSZ)
  return;
 chacha_keysetup(&rs, buf, KEYSZ * 8, 0);
 chacha_ivsetup(&rs, buf + KEYSZ);
}
