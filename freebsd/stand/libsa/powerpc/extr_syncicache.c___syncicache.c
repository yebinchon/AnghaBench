
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int cacheline_size ;
 int getcachelinesize () ;

void
__syncicache(void *from, int len)
{
 int l, off;
 char *p;


 if (!cacheline_size)
  getcachelinesize();


 off = (u_int)from & (cacheline_size - 1);
 l = len += off;
 p = (char *)from - off;

 do {
  __asm __volatile ("dcbst 0,%0" :: "r"(p));
  p += cacheline_size;
 } while ((l -= cacheline_size) > 0);
 __asm __volatile ("sync");
 p = (char *)from - off;
 do {
  __asm __volatile ("icbi 0,%0" :: "r"(p));
  p += cacheline_size;
 } while ((len -= cacheline_size) > 0);
 __asm __volatile ("sync; isync");
}
