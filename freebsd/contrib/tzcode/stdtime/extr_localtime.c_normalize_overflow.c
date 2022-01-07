
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int increment_overflow (int* const,int) ;

__attribute__((used)) static int
normalize_overflow(int *const tensptr, int *const unitsptr, const int base)
{
 int tensdelta;

 tensdelta = (*unitsptr >= 0) ?
  (*unitsptr / base) :
  (-1 - (-1 - *unitsptr) / base);
 *unitsptr -= tensdelta * base;
 return increment_overflow(tensptr, tensdelta);
}
