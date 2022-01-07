
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_array {scalar_t__* ids; scalar_t__ count; } ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static int
match_owner_id(struct id_array *ids, int64_t id)
{
 unsigned b, m, t;

 t = 0;
 b = (unsigned)ids->count;
 while (t < b) {
  m = (t + b)>>1;
  if (ids->ids[m] == id)
   return (1);
  if (ids->ids[m] < id)
   t = m + 1;
  else
   b = m;
 }
 return (0);
}
