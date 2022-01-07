
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PJDLOG_ASSERT (int) ;

__attribute__((used)) static bool
allzeros(const void *data, size_t size)
{
 const uint64_t *p = data;
 unsigned int i;
 uint64_t v;

 PJDLOG_ASSERT((size % sizeof(*p)) == 0);
 size >>= 3;
 if ((p[0] | p[size >> 1] | p[size - 1]) != 0)
  return (0);
 v = 0;
 for (i = 0; i < size; i++)
  v |= *p++;
 return (v == 0);
}
