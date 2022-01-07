
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned char *
decode_mpi(unsigned char **pptr, size_t *sz)
{
 unsigned char *data;
 unsigned char *ptr;
 size_t mlen;

 if (pptr == ((void*)0) || sz == ((void*)0))
  return (((void*)0));

 ptr = *pptr;

 mlen = (size_t)(*ptr++ << 8);
 mlen |= (size_t)*ptr++;
 mlen = (mlen + 7) / 8;
 *sz = mlen;
 data = ptr;
 ptr += mlen;
 *pptr = ptr;
 return (data);
}
