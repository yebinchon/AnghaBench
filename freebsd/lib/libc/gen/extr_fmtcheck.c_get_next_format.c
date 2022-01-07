
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ EFT ;


 scalar_t__ FMTCHECK_DONE ;
 scalar_t__ FMTCHECK_PRECISION ;
 scalar_t__ FMTCHECK_UNKNOWN ;
 scalar_t__ FMTCHECK_WIDTH ;
 int RETURN (char const**,char const*,scalar_t__) ;
 scalar_t__ get_next_format_from_precision (char const**) ;
 scalar_t__ get_next_format_from_width (char const**) ;
 scalar_t__ isdigit (char const) ;
 char* strchr (char const*,char const) ;

__attribute__((used)) static EFT
get_next_format(const char **pf, EFT eft)
{
 int infmt;
 const char *f;

 if (eft == FMTCHECK_WIDTH) {
  (*pf)++;
  return get_next_format_from_width(pf);
 } else if (eft == FMTCHECK_PRECISION) {
  (*pf)++;
  return get_next_format_from_precision(pf);
 }

 f = *pf;
 infmt = 0;
 while (!infmt) {
  f = strchr(f, '%');
  if (f == ((void*)0))
   RETURN(pf,f,FMTCHECK_DONE);
  f++;
  if (!*f)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  if (*f != '%')
   infmt = 1;
  else
   f++;
 }


 while (*f && (strchr("#'0- +", *f)))
  f++;

 if (*f == '*') {
  RETURN(pf,f,FMTCHECK_WIDTH);
 }

 while (isdigit(*f)) f++;
 if (!*f) {
  RETURN(pf,f,FMTCHECK_UNKNOWN);
 }

 RETURN(pf,f,get_next_format_from_width(pf));

}
