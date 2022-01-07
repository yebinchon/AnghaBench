
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 unsigned char* header_bytes (struct archive_read*,int) ;

__attribute__((used)) static int
read_Bools(struct archive_read *a, unsigned char *data, size_t num)
{
 const unsigned char *p;
 unsigned i, mask = 0, avail = 0;

 for (i = 0; i < num; i++) {
  if (mask == 0) {
   if ((p = header_bytes(a, 1)) == ((void*)0))
    return (-1);
   avail = *p;
   mask = 0x80;
  }
  data[i] = (avail & mask)?1:0;
  mask >>= 1;
 }
 return (0);
}
