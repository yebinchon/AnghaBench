
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t n; scalar_t__ p; } ;
typedef TYPE_1__ ZIO ;


 scalar_t__ EOZ ;
 scalar_t__ luaZ_fill (TYPE_1__*) ;
 int memcpy (void*,scalar_t__,size_t) ;

size_t luaZ_read (ZIO *z, void *b, size_t n) {
  while (n) {
    size_t m;
    if (z->n == 0) {
      if (luaZ_fill(z) == EOZ)
        return n;
      else {
        z->n++;
        z->p--;
      }
    }
    m = (n <= z->n) ? n : z->n;
    memcpy(b, z->p, m);
    z->n -= m;
    z->p += m;
    b = (char *)b + m;
    n -= m;
  }
  return 0;
}
