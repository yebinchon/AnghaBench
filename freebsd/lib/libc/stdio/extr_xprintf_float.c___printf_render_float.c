
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct printf_info {int prec; char showsign; int spec; scalar_t__ left; int width; scalar_t__ alt; int pad; scalar_t__ is_long_double; } ;
struct __printf_io {int dummy; } ;
struct TYPE_2__ {char* thousands_sep; char* grouping; char* decimal_point; } ;


 int BUF ;
 char const CHAR_MAX ;
 int DEFPREC ;
 int INT_MAX ;
 int MAXEXPDIG ;
 int PRINTANDPAD (char*,char*,char const,int) ;
 char* __hdtoa (double,char const*,int,int*,int*,char**) ;
 char* __hldtoa (long double,char const*,int,int*,int*,char**) ;
 char* __ldtoa (long double*,int,int,int*,int*,char**) ;
 char* __lowercase_hex ;
 int __printf_flush (struct __printf_io*) ;
 scalar_t__ __printf_pad (struct __printf_io*,int,int) ;
 scalar_t__ __printf_puts (struct __printf_io*,char*,int) ;
 char* __uppercase_hex ;
 int assert (int) ;
 char* dtoa (double,int,int,int*,int*,char**) ;
 int exponent (char*,int,char) ;
 int freedtoa (char*) ;
 TYPE_1__* localeconv () ;

int
__printf_render_float(struct __printf_io *io, const struct printf_info *pi, const void *const *arg)
{
 int prec;
 char *dtoaresult;
 char expchar;
 char *cp;
 int expt;
 int signflag;
 char *dtoaend;
 char sign;
 int size;
 int ndig;
 int expsize;
 char expstr[MAXEXPDIG+2];
 int nseps;
 int nrepeats;
 const char *grouping;
 int lead;
 long double ld;
 double d;
 int realsz;
 int dprec;
 char ox[2];
 int ret;
 char *decimal_point;
 int n2;
 char thousands_sep;
 char buf[BUF];
 const char *xdigs;
 int flag;

 prec = pi->prec;
 ox[1] = '\0';
 sign = pi->showsign;
 flag = 0;
 ret = 0;

 thousands_sep = *(localeconv()->thousands_sep);
 grouping = ((void*)0);
 if (pi->alt)
  grouping = localeconv()->grouping;
 decimal_point = localeconv()->decimal_point;
 dprec = -1;

 switch(pi->spec) {
 case 'a':
 case 'A':
  if (pi->spec == 'a') {
   ox[1] = 'x';
   xdigs = __lowercase_hex;
   expchar = 'p';
  } else {
   ox[1] = 'X';
   xdigs = __uppercase_hex;
   expchar = 'P';
  }
  if (prec >= 0)
   prec++;
  if (pi->is_long_double) {
   ld = *((long double *)arg[0]);
   dtoaresult = cp =
       __hldtoa(ld, xdigs, prec,
       &expt, &signflag, &dtoaend);
  } else {
   d = *((double *)arg[0]);
   dtoaresult = cp =
       __hdtoa(d, xdigs, prec,
       &expt, &signflag, &dtoaend);
  }
  if (prec < 0)
   prec = dtoaend - cp;
  if (expt == INT_MAX)
   ox[1] = '\0';
  goto fp_common;
 case 'e':
 case 'E':
  expchar = pi->spec;
  if (prec < 0)
   prec = DEFPREC + 1;
  else
   prec++;
  break;
 case 'f':
 case 'F':
  expchar = '\0';
  break;
 case 'g':
 case 'G':
  expchar = pi->spec - ('g' - 'e');
  if (prec == 0)
   prec = 1;
  break;
 default:
  assert(pi->spec == 'f');
 }

 if (prec < 0)
  prec = DEFPREC;
 if (pi->is_long_double) {
  ld = *((long double *)arg[0]);
  dtoaresult = cp =
      __ldtoa(&ld, expchar ? 2 : 3, prec,
      &expt, &signflag, &dtoaend);
 } else {
  d = *((double *)arg[0]);
  dtoaresult = cp =
      dtoa(d, expchar ? 2 : 3, prec,
      &expt, &signflag, &dtoaend);
  if (expt == 9999)
   expt = INT_MAX;
 }
fp_common:
 if (signflag)
  sign = '-';
 if (expt == INT_MAX) {
  if (*cp == 'N') {
   cp = (pi->spec >= 'a') ? "nan" : "NAN";
   sign = '\0';
  } else
   cp = (pi->spec >= 'a') ? "inf" : "INF";
  size = 3;
  flag = 1;
  goto here;
 }
 ndig = dtoaend - cp;
 if (pi->spec == 'g' || pi->spec == 'G') {
  if (expt > -4 && expt <= prec) {

   expchar = '\0';
   if (pi->alt)
    prec -= expt;
   else
    prec = ndig - expt;
   if (prec < 0)
    prec = 0;
  } else {




   if (!pi->alt)
    prec = ndig;
  }
 }
 if (expchar) {
  expsize = exponent(expstr, expt - 1, expchar);
  size = expsize + prec;
  if (prec > 1 || pi->alt)
   ++size;
 } else {

  if (expt > 0)
   size = expt;
  else
   size = 1;

  if (prec || pi->alt)
   size += prec + 1;
  if (grouping && expt > 0) {

   nseps = nrepeats = 0;
   lead = expt;
   while (*grouping != CHAR_MAX) {
    if (lead <= *grouping)
     break;
    lead -= *grouping;
    if (*(grouping+1)) {
     nseps++;
     grouping++;
    } else
     nrepeats++;
   }
   size += nseps + nrepeats;
  } else
   lead = expt;
 }

here:
 realsz = dprec > size ? dprec : size;
 if (sign)
  realsz++;
 if (ox[1])
  realsz += 2;


 if (pi->pad != '0' && pi->left == 0)
  ret += __printf_pad(io, pi->width - realsz, 0);


 if (sign)
  ret += __printf_puts(io, &sign, 1);

 if (ox[1]) {
  ox[0] = '0';
  ret += __printf_puts(io, ox, 2);
 }


 if (pi->pad == '0' && pi->left == 0)
  ret += __printf_pad(io, pi->width - realsz, 1);


 ret += __printf_pad(io, dprec - size, 1);

 if (flag)
  ret += __printf_puts(io, cp, size);
 else {

  if (!expchar) {
   if (expt <= 0) {
    ret += __printf_puts(io, "0", 1);
    if (prec || pi->alt)
     ret += __printf_puts(io, decimal_point, 1);
    ret += __printf_pad(io, -expt, 1);

    prec += expt;
   } else {
    PRINTANDPAD(cp, dtoaend, lead, 1);
    cp += lead;
    if (grouping) {
     while (nseps>0 || nrepeats>0) {
      if (nrepeats > 0)
       nrepeats--;
      else {
       grouping--;
       nseps--;
      }
      ret += __printf_puts(io, &thousands_sep, 1);
      PRINTANDPAD(cp,dtoaend,
          *grouping, 1);
      cp += *grouping;
     }
     if (cp > dtoaend)
      cp = dtoaend;
    }
    if (prec || pi->alt)
     ret += __printf_puts(io, decimal_point,1);
   }
   PRINTANDPAD(cp, dtoaend, prec, 1);
  } else {
   if (prec > 1 || pi->alt) {
    buf[0] = *cp++;
    buf[1] = *decimal_point;
    ret += __printf_puts(io, buf, 2);
    ret += __printf_puts(io, cp, ndig-1);
    ret += __printf_pad(io, prec - ndig, 1);
   } else
    ret += __printf_puts(io, cp, 1);
   ret += __printf_puts(io, expstr, expsize);
  }
 }

 if (pi->left)
  ret += __printf_pad(io, pi->width - realsz, 0);

 __printf_flush(io);
 if (dtoaresult != ((void*)0))
  freedtoa(dtoaresult);

 return (ret);
}
