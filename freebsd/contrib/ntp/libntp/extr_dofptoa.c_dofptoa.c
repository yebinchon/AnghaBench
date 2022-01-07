
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_long ;
typedef int u_fp ;
typedef int u_char ;


 int LIB_GETBUF (char*) ;
 int ZERO (int*) ;

char *
dofptoa(
 u_fp fpv,
 int neg,
 short ndec,
 int msec
 )
{
 register u_char *cp, *cpend;
 register u_long val;
 register short dec;
 u_char cbuf[12];
 u_char *cpdec;
 char *buf;
 char *bp;




 LIB_GETBUF(buf);




 ZERO(cbuf);





 cp = cpend = &cbuf[5];
 val = fpv;




 if (!(val & 0xffff0000))
     cp--;
 else {
  register u_short sv = (u_short)(val >> 16);
  register u_short tmp;
  register u_short ten = 10;

  do {
   tmp = sv;
   sv = (u_short) (sv/ten);
   *(--cp) = (u_char)(tmp - ((sv<<3) + (sv<<1)));
  } while (sv != 0);
 }




 if (msec) {
  dec = (short)(ndec + 3);
  if (dec < 3)
      dec = 3;
  cpdec = &cbuf[8];
 } else {
  dec = ndec;
  cpdec = cpend;
 }

 if (dec > 6)
     dec = 6;

 if (dec > 0) {
  do {
   val &= 0xffff;
   val = (val << 3) + (val << 1);
   *cpend++ = (u_char)(val >> 16);
  } while (--dec > 0);
 }

 if (val & 0x8000) {
  register u_char *tp;



  tp = cpend;
  *(--tp) += 1;
  while (*tp >= 10) {
   *tp = 0;
   *(--tp) += 1;
  }
 }




 while (cp < (cpdec -1) && *cp == 0)
     cp++;




 bp = buf;
 if (neg)
     *bp++ = '-';

 while (cp < cpend) {
  if (cp == cpdec)
      *bp++ = '.';
  *bp++ = (char)(*cp++ + '0');
 }
 *bp = '\0';
 return buf;
}
