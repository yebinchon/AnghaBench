
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 char HEX (int) ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;

void xdump(FILE * file, char *msg, void *p, int size)
{

 uint8_t *cp = p;
 int i;

 if (msg)
  fputs(msg, file);

 for (i = 0; i < size;) {
  fputc(((*cp >> 4) < 10 ? '0' + (*cp >> 4) : 'a' + ((*cp >> 4) -10)), file);
  fputc(((*cp & 0xf) < 10 ? '0' + (*cp & 0xf) : 'a' + ((*cp & 0xf) -10)), file);
  if (++i >= size)
   break;
  fputc(((cp[1] >> 4) < 10 ? '0' + (cp[1] >> 4) : 'a' + ((cp[1] >> 4) -10)), file);
  fputc(((cp[1] & 0xf) < 10 ? '0' + (cp[1] & 0xf) : 'a' + ((cp[1] & 0xf) -10)), file);
  if ((++i) % 16)
   fputc(' ', file);
  else
   fputc('\n', file);
  cp += 2;
 }
 if (i % 16)
  fputc('\n', file);
}
