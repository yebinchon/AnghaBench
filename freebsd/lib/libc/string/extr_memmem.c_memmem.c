
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* fourbyte_memmem (unsigned char const*,size_t,unsigned char const*) ;
 unsigned char* memchr (void const*,unsigned char const,size_t) ;
 void* threebyte_memmem (unsigned char const*,size_t,unsigned char const*) ;
 void* twobyte_memmem (unsigned char const*,size_t,unsigned char const*) ;
 void* twoway_memmem (unsigned char const*,unsigned char const*,unsigned char const*,size_t) ;

void *memmem(const void *h0, size_t k, const void *n0, size_t l)
{
 const unsigned char *h = h0, *n = n0;


 if (!l) return (void *)h;


 if (k<l) return 0;


 h = memchr(h0, *n, k);
 if (!h || l==1) return (void *)h;
 k -= h - (const unsigned char *)h0;
 if (k<l) return 0;
 if (l==2) return twobyte_memmem(h, k, n);
 if (l==3) return threebyte_memmem(h, k, n);
 if (l==4) return fourbyte_memmem(h, k, n);

 return twoway_memmem(h, h+k, n, l);
}
