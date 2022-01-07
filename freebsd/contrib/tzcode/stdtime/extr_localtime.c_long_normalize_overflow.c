
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int long_increment_overflow (long* const,int) ;

__attribute__((used)) static int
long_normalize_overflow(long *const tensptr, int *const unitsptr, const int base)
{
 register int tensdelta;

 tensdelta = (*unitsptr >= 0) ?
  (*unitsptr / base) :
  (-1 - (-1 - *unitsptr) / base);
 *unitsptr -= tensdelta * base;
 return long_increment_overflow(tensptr, tensdelta);
}
