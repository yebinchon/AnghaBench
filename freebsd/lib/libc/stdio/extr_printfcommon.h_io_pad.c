
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_state {int dummy; } ;
typedef int locale_t ;
typedef int CHAR ;


 int PADSIZE ;
 scalar_t__ io_print (struct io_state*,int const*,int,int ) ;

__attribute__((used)) static inline int
io_pad(struct io_state *iop, int howmany, const CHAR * __restrict with,
  locale_t locale)
{
 int n;

 while (howmany > 0) {
  n = (howmany >= PADSIZE) ? PADSIZE : howmany;
  if (io_print(iop, with, n, locale))
   return (-1);
  howmany -= n;
 }
 return (0);
}
