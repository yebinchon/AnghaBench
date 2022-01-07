
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;


 int atolfp (char*,int *) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;

int
mstolfp(
 const char *str,
 l_fp *lfp
 )
{
 register const char *cp;
 register char *bp;
 register const char *cpdec;
 char buf[100];
 bp = buf;
 cp = str;
 while (isspace((unsigned char)*cp))
     cp++;

 if (*cp == '-') {
  *bp++ = '-';
  cp++;
 }

 if (*cp != '.' && !isdigit((unsigned char)*cp))
     return 0;





 cpdec = cp;
 while (isdigit((unsigned char)*cpdec))
     cpdec++;





 if ((cpdec - cp) > 3) {
  do {
   *bp++ = (char)*cp++;
  } while ((cpdec - cp) > 3);
 } else {
  *bp++ = '0';
 }






 *bp++ = '.';
 if ((cpdec - cp) < 3) {
  size_t i = 3 - (cpdec - cp);
  do {
   *bp++ = '0';
  } while (--i > 0);
 }





 while (cp < cpdec)
     *bp++ = (char)*cp++;

 if (*cp == '.') {
  cp++;
  while (isdigit((unsigned char)*cp))
      *bp++ = (char)*cp++;
 }
 *bp = '\0';





 if (*cp != '\0' && !isspace((unsigned char)*cp))
     return 0;
 return atolfp(buf, lfp);
}
