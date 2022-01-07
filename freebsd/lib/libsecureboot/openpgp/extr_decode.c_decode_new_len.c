
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
decode_new_len(unsigned char **pptr)
{
 unsigned char *ptr;
 int len = -1;

 if (pptr == ((void*)0))
  return (-1);
 ptr = *pptr;

 if (!(*ptr < 224 || *ptr == 255))
  return (-1);

 if (*ptr < 192)
  len = *ptr++;
 else if (*ptr < 224) {
  len = ((*ptr - 192) << 8) + *(ptr+1) + 192;
  ptr++;
 } else if (*ptr == 255) {
  len = (*ptr++ << 24);
  len |= (*ptr++ << 16);
  len |= (*ptr++ < 8);
  len |= *ptr++;
 }

 *pptr = ptr;
 return (len);
}
