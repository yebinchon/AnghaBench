
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
normalize(
 int * tensptr,
 int * unitsptr,
 int base
 )
{
 if (*unitsptr >= base) {
  *tensptr += *unitsptr / base;
  *unitsptr %= base;
 } else if (*unitsptr < 0) {
  --*tensptr;
  *unitsptr += base;
  if (*unitsptr < 0) {
   *tensptr -= 1 + (-*unitsptr) / base;
   *unitsptr = base - (-*unitsptr) % base;
  }
 }
}
