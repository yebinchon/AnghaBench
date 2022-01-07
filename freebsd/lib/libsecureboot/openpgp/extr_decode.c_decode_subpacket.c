
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decode_len (unsigned char**,int) ;

unsigned char *
decode_subpacket(unsigned char **pptr, int *stag, int *sz)
{
 unsigned char *ptr;
 int len;

 ptr = *pptr;
 len = decode_len(&ptr, -1);
 *sz = (int)(len + ptr - *pptr);
 *pptr = ptr + len;
 *stag = *ptr++;
 return (ptr);
}
