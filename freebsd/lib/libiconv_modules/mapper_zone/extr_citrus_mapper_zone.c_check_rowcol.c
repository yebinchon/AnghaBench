
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct _zone {scalar_t__ z_end; scalar_t__ z_begin; } ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static int
check_rowcol(struct _zone *z, int32_t ofs, uint32_t maxval)
{
 uint32_t remain;

 if (maxval != 0 && z->z_end >= maxval)
  return (-1);

 if (ofs > 0) {
  if (maxval == 0)

   remain = (z->z_end == 0) ? 0xFFFFFFFF :
       0xFFFFFFFF - z->z_end + 1;
  else
   remain = maxval - z->z_end;
  if ((uint32_t)ofs > remain)
   return (-1);
 } else if (ofs < 0) {
  if (z->z_begin < (uint32_t)-ofs)
   return (-1);
 }

 return (0);
}
