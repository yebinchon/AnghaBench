
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decode_new_len (unsigned char**) ;

__attribute__((used)) static int
decode_len(unsigned char **pptr, int ltype)
{
 unsigned char *ptr;
 int len;

 if (ltype < 0)
  return (decode_new_len(pptr));

 if (pptr == ((void*)0))
  return (-1);

 ptr = *pptr;

 switch (ltype) {
 case 0:
  len = *ptr++;
  break;
 case 1:
  len = (*ptr++ << 8);
  len |= *ptr++;
  break;
 case 2:
  len = *ptr++ << 24;
  len |= *ptr++ << 16;
  len |= *ptr++ << 8;
  len |= *ptr++;
  break;
 case 3:
 default:

  len = -1;
 }

 *pptr = ptr;
 return (len);
}
