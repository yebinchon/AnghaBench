
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {int rs_chacha; } ;


 size_t IVSZ ;
 size_t KEYSZ ;
 int MAP_ANON ;
 TYPE_1__* MAP_FAILED ;
 int MAP_INHERIT_ZERO ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int abort () ;
 int assert (int *) ;
 int chacha_ivsetup (int *,int *) ;
 int chacha_keysetup (int *,int *,size_t,int ) ;
 TYPE_1__* malloc (int) ;
 int minherit (TYPE_1__*,int,int ) ;
 TYPE_1__* mmap (int *,int,int,int,int,int ) ;
 TYPE_1__* rs ;
 TYPE_1__* rsx ;

__attribute__((used)) static inline void
_rs_init(u_char *buf, size_t n)
{
 assert(buf);
 if (n < KEYSZ + IVSZ)
  return;

 if (rs == ((void*)0)) {

  if ((rs = mmap(((void*)0), sizeof(*rs), PROT_READ|PROT_WRITE,
      MAP_ANON|MAP_PRIVATE, -1, 0)) == MAP_FAILED)
   abort();
 }
 if (rsx == ((void*)0)) {

  if ((rsx = mmap(((void*)0), sizeof(*rsx), PROT_READ|PROT_WRITE,
      MAP_ANON|MAP_PRIVATE, -1, 0)) == MAP_FAILED)
   abort();





 }

 chacha_keysetup(&rsx->rs_chacha, buf, KEYSZ * 8, 0);
 chacha_ivsetup(&rsx->rs_chacha, buf + KEYSZ);
}
