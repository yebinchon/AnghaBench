
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;
typedef int FILE ;


 char* lfptoms (int *,int) ;
 int output (int *,char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
outputarr(
 FILE *fp,
 char *name,
 int narr,
 l_fp *lfp
 )
{
 char *bp;
 char *cp;
 size_t i;
 size_t len;
 char buf[256];

 bp = buf;



 for (i = (int)strlen(name); i < 11; i++)
  *bp++ = ' ';

 for (i = narr; i > 0; i--) {
  if (i != (size_t)narr)
   *bp++ = ' ';
  cp = lfptoms(lfp, 2);
  len = strlen(cp);
  if (len > 7) {
   cp[7] = '\0';
   len = 7;
  }
  while (len < 7) {
   *bp++ = ' ';
   len++;
  }
  while (*cp != '\0')
      *bp++ = *cp++;
  lfp++;
 }
 *bp = '\0';
 output(fp, name, buf);
}
