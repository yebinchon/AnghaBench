
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char*,int,int *) ;

BIGNUM *
mpi2bn(unsigned char **pptr)
{
 BIGNUM *bn = ((void*)0);
 unsigned char *ptr;
 int mlen;

 if (pptr == ((void*)0))
  return (((void*)0));

 ptr = *pptr;

 mlen = (*ptr++ << 8);
 mlen |= *ptr++;
 mlen = (mlen + 7) / 8;
 bn = BN_bin2bn(ptr, mlen, ((void*)0));
 ptr += mlen;
 *pptr = ptr;

 return (bn);
}
