
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECKSIZE ;
 int MAXRECSIZE ;
 int pmon_makeb64 (unsigned int,char*,int,unsigned int*) ;
 int pmon_zeroset (int,char**,unsigned int*,unsigned int*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static void
pmon_make_fastrec (char **outbuf, unsigned char *inbuf, int *inptr,
     int inamount, int *recsize, unsigned int *csum,
     unsigned int *zerofill)
{
  int count = 0;
  char *p = *outbuf;





  while ((*recsize < (MAXRECSIZE - CHECKSIZE)) && ((inamount - *inptr) > 0))
    {

      if ((inamount - *inptr) < 3)
 {
   if (*zerofill != 0)
     *recsize = pmon_zeroset (*recsize, &p, zerofill, csum);
   sprintf (p, "/B");
   count = pmon_makeb64 (inbuf[*inptr], &p[2], 12, csum);
   p += (2 + count);
   *recsize += (2 + count);
   (*inptr)++;
 }
      else
 {
   unsigned int value = ((inbuf[*inptr + 0] << 16) | (inbuf[*inptr + 1] << 8) | inbuf[*inptr + 2]);







   if (value == 0x00000000)
     {
       (*zerofill)++;
       if (*zerofill == 0xFFF)
  *recsize = pmon_zeroset (*recsize, &p, zerofill, csum);
     }
   else
     {
       if (*zerofill != 0)
  *recsize = pmon_zeroset (*recsize, &p, zerofill, csum);
       count = pmon_makeb64 (value, p, 24, csum);
       p += count;
       *recsize += count;
     }
   *inptr += 3;
 }
    }

  *outbuf = p;
  return;
}
