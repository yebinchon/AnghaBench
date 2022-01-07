
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static int
betweenu32(
 uint32_t lo,
 uint32_t x,
 uint32_t hi)
{
 int rc;

 if (lo <= hi)
  rc = (lo <= x) && (x < hi);
 else
  rc = (lo <= x) || (x < hi);
 return rc;
}
