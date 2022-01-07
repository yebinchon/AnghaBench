
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static size_t
cmp(uint8_t *a, uint8_t *b, size_t size)
{
 size_t i;

 for (i = 0; i < size; i++) {
  if (a[i] != b[i])
   break;
 }
 return (i);
}
