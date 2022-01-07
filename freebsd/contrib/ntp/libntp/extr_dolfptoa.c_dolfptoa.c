
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32 ;
typedef int u_char ;
typedef int cbuf ;


 int FALSE ;
 int LIB_GETBUF (char*) ;
 int M_ADD (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int M_LSHIFT (scalar_t__,scalar_t__) ;
 int ZERO (int*) ;

char *
dolfptoa(
 u_int32 fpi,
 u_int32 fpv,
 int neg,
 short ndec,
 int msec
 )
{
 u_char *cp, *cpend, *cpdec;
 int dec;
 u_char cbuf[24];
 char *buf, *bp;




 LIB_GETBUF(buf);




 ZERO(cbuf);







 cp = cpend = cpdec = &cbuf[10];
 for (dec = (int)(cp - cbuf); dec > 0 && fpi != 0; dec--) {

  u_int32 digit;

  digit = fpi;
  fpi /= 10U;
  digit -= (fpi << 3) + (fpi << 1);
  *--cp = (u_char)digit;
 }





 dec = ndec;
 if (dec < 0)
  dec = 0;
 if (msec) {
  dec += 3;
  cpdec += 3;
 }
 if ((size_t)dec > sizeof(cbuf) - (cpend - cbuf))
  dec = (int)(sizeof(cbuf) - (cpend - cbuf));




 for ( ; dec > 0 && fpv != 0; dec--) {
  u_int32 digit, tmph, tmpl;







  digit = 0;
  M_LSHIFT(digit, fpv);
  tmph = digit;
  tmpl = fpv;
  M_LSHIFT(digit, fpv);
  M_LSHIFT(digit, fpv);
  M_ADD(digit, fpv, tmph, tmpl);
  *cpend++ = (u_char)digit;
 }


 if (dec > 0) {

  cpend += dec;
 } else {

  u_char *tp = cpend;
  int carry = ((fpv & 0x80000000) != 0);

  for (dec = (int)(tp - cbuf); carry && dec > 0; dec--) {
   *--tp += 1;
   if (*tp == 10)
    *tp = 0;
   else
    carry = FALSE;
  }

  if (tp < cp)
   cp = tp;
 }
 while (cp < cpdec && *cp == 0)
  cp++;
 if (cp >= cpdec)
  cp = cpdec - 1;

 bp = buf;
 if (neg)
  *bp++ = '-';
 while (cp < cpend) {
  if (cp == cpdec)
   *bp++ = '.';
  *bp++ = (char)(*cp++) + '0';
 }
 *bp = '\0';




 return buf;
}
