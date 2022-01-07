
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int clocktime_t ;
struct TYPE_2__ {unsigned char* onebits; unsigned char* zerobits; } ;


 int BITS ;
 unsigned int CVT_BADFMT ;
 unsigned int CVT_FAIL ;
 unsigned int CVT_NONE ;
 int PRINTF (char*,char*) ;
 unsigned long convert_rawdcf (unsigned char*,int,int *) ;
 TYPE_1__ dcfparam ;
 int dprintf (char*) ;

__attribute__((used)) static unsigned long
cvt_rawdcf(
    unsigned char *buffer,
    int size,
    clocktime_t *clock_time
    )
{
 register unsigned char *s = buffer;
 register unsigned char *e = buffer + size;
 register unsigned char *b = dcfparam.onebits;
 register unsigned char *c = dcfparam.zerobits;
 register unsigned rtc = CVT_NONE;
 register unsigned int i, lowmax, highmax, cutoff, span;

 unsigned char histbuf[9];
 for (i = 0; i < 9; i++)
 {
  histbuf[i] = 0;
 }

 cutoff = 0;
 lowmax = 0;





 while (s < e)
 {
  register unsigned int ch = *s ^ 0xFF;



  if (!((ch+1) & ch) || !*s)
  {



   for (i = 0; ch; i++)
   {
    ch >>= 1;
   }

   *s = i;
   histbuf[i]++;
   cutoff += i;
   lowmax++;
  }
  else
  {



   dprintf(("parse: cvt_rawdcf: character check for 0x%x@%ld FAILED\n",
     (u_int)*s, (long)(s - buffer)));
   *s = (unsigned char)~0;
   rtc = CVT_FAIL|CVT_BADFMT;
  }
  s++;
 }





 if (lowmax)
 {
  cutoff /= lowmax;
 }
 else
 {
  cutoff = 4;
 }

 dprintf(("parse: cvt_rawdcf: average bit count: %d\n", cutoff));

 lowmax = 0;
 highmax = 0;




 dprintf(("parse: cvt_rawdcf: histogram:"));
 for (i = 0; i <= cutoff; i++)
 {
  lowmax += histbuf[i] * i;
  highmax += histbuf[i];
  dprintf((" %d", histbuf[i]));
 }
 dprintf((" <M>"));




 lowmax += highmax / 2;






 if (highmax)
 {
  lowmax /= highmax;
 }
 else
 {
  lowmax = 0;
 }

 highmax = 0;
 cutoff = 0;




 for (; i < 9; i++)
 {
  highmax+=histbuf[i] * i;
  cutoff +=histbuf[i];
  dprintf((" %d", histbuf[i]));
 }
 dprintf(("\n"));




 if (cutoff)
 {
  highmax /= cutoff;
 }
 else
 {
  highmax = 9 -1;
 }
 span = cutoff = lowmax;
 for (i = lowmax; i <= highmax; i++)
 {
  if (histbuf[cutoff] > histbuf[i])
  {




   cutoff = span = i;
  }
  else
      if (histbuf[cutoff] == histbuf[i])
      {




       span = i;
      }
 }





 cutoff = (cutoff + span) / 2;

 dprintf(("parse: cvt_rawdcf: lower maximum %d, higher maximum %d, cutoff %d\n", lowmax, highmax, cutoff));




 s = buffer;
 while ((s < e) && *c && *b)
 {
  if (*s == (unsigned char)~0)
  {



   *s = '?';
  }
  else
  {



   *s = (*s >= cutoff) ? *b : *c;
  }
  s++;
  b++;
  c++;
 }





 if (rtc != CVT_NONE)
 {
  PRINTF("%-30s", "*** BAD DATA");
 }

 return (rtc == CVT_NONE) ? convert_rawdcf(buffer, size, clock_time) : rtc;
}
