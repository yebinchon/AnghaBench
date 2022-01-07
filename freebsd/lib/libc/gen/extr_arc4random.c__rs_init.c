
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int rs_chacha; } ;


 size_t IVSZ ;
 size_t KEYSZ ;
 int _rs_allocate (int **,TYPE_1__**) ;
 int abort () ;
 int chacha_ivsetup (int *,int *,int *) ;
 int chacha_keysetup (int *,int *,size_t) ;
 int * rs ;
 TYPE_1__* rsx ;

__attribute__((used)) static inline void
_rs_init(u_char *buf, size_t n)
{
 if (n < KEYSZ + IVSZ)
  return;

 if (rs == ((void*)0)) {
  if (_rs_allocate(&rs, &rsx) == -1)
   abort();
 }

 chacha_keysetup(&rsx->rs_chacha, buf, KEYSZ * 8);
 chacha_ivsetup(&rsx->rs_chacha, buf + KEYSZ, ((void*)0));
}
