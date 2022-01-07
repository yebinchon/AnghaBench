
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lconv {char* mon_grouping; char* mon_decimal_point; char* decimal_point; char* mon_thousands_sep; char* thousands_sep; int int_frac_digits; int frac_digits; } ;


 int CHAR_MAX ;
 int GRPCPY (int) ;
 int GRPSEP ;
 int NEED_GROUPING ;
 int USE_INTL_CURRENCY ;
 int asprintf (char**,char*,int,int,double) ;
 char* calloc (int,size_t) ;
 int free (char*) ;
 scalar_t__ get_groups (int,char*) ;
 struct lconv* localeconv () ;
 int memcpy (char*,char const*,int) ;
 int memmove (char*,char*,size_t) ;
 int memset (char*,int,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
__format_grouped_double(double value, int *flags,
   int left_prec, int right_prec, int pad_char) {

 char *rslt;
 char *avalue;
 int avalue_size;

 size_t bufsize;
 char *bufend;

 int padded;

 struct lconv *lc = localeconv();
 char *grouping;
 const char *decimal_point;
 const char *thousands_sep;
 size_t decimal_point_size;
 size_t thousands_sep_size;

 int groups = 0;

 grouping = lc->mon_grouping;
 decimal_point = lc->mon_decimal_point;
 if (*decimal_point == '\0')
  decimal_point = lc->decimal_point;
 thousands_sep = lc->mon_thousands_sep;
 if (*thousands_sep == '\0')
  thousands_sep = lc->thousands_sep;

 decimal_point_size = strlen(decimal_point);
 thousands_sep_size = strlen(thousands_sep);


 if (left_prec == -1)
  left_prec = 0;


 if (right_prec == -1) {
                if (*flags & USE_INTL_CURRENCY)
                        right_prec = lc->int_frac_digits;
                else
                        right_prec = lc->frac_digits;

  if (right_prec == CHAR_MAX)
   right_prec = 2;
 }

 if (*flags & NEED_GROUPING)
  left_prec += get_groups(left_prec, grouping);


 avalue_size = asprintf(&avalue, "%*.*f", left_prec + right_prec + 1,
     right_prec, value);
 if (avalue_size < 0)
  return (((void*)0));


 bufsize = avalue_size * (1 + thousands_sep_size) + decimal_point_size +
     1;
 rslt = calloc(1, bufsize);
 if (rslt == ((void*)0)) {
  free(avalue);
  return (((void*)0));
 }
 bufend = rslt + bufsize - 1;


 padded = 0;
 while (avalue[padded] == ' ') {
  padded++;
  avalue_size--;
 }

 if (right_prec > 0) {
  bufend -= right_prec;
  memcpy(bufend, avalue + avalue_size+padded-right_prec,
      right_prec);
  bufend -= decimal_point_size;
  memcpy(bufend, decimal_point, decimal_point_size);
  avalue_size -= (right_prec + 1);
 }

 if ((*flags & NEED_GROUPING) &&
     thousands_sep_size > 0 &&
     *grouping != CHAR_MAX &&
     *grouping > 0) {
  while (avalue_size > (int)*grouping) {
   GRPCPY(*grouping);
   GRPSEP;
   grouping++;


   if (*grouping == CHAR_MAX)
    break;


   if (*grouping == 0) {
    grouping--;
    while (avalue_size > *grouping) {
     GRPCPY(*grouping);
     GRPSEP;
    }
   }
  }
  if (avalue_size != 0)
   GRPCPY(avalue_size);
  padded -= groups;

 } else {
  bufend -= avalue_size;
  memcpy(bufend, avalue+padded, avalue_size);

  if (right_prec == 0)
   padded -= decimal_point_size;
 }


 if (padded > 0) {
  bufend -= padded;
  memset(bufend, pad_char, padded);
 }

 bufsize = bufsize - (bufend - rslt) + 1;
 memmove(rslt, bufend, bufsize);
 free(avalue);
 return (rslt);
}
