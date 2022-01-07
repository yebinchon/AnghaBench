
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * __bits; } ;
typedef TYPE_1__ sigset_t ;
typedef int p ;


 int N (int ,size_t) ;
 size_t __arraycount (int *) ;
 int assert (int) ;
 char xtoa (int ) ;

__attribute__((used)) static const char *
prmask(const sigset_t *m, char *buf, size_t len)
{
 size_t j = 2;
 assert(len >= 3 + sizeof(*m));
 buf[0] = '0';
 buf[1] = 'x';

 for (size_t i = __arraycount(m->__bits); i > 0; i--) {
  uint32_t p = m->__bits[i - 1];
  for (size_t k = sizeof(p); k > 0; k--)
   buf[j++] = xtoa((((p) >> ((k - 1) * 4)) & 0xf));
 }
 buf[j] = '\0';
 return buf;
}
