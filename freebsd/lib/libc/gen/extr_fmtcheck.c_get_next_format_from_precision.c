
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum e_modifier { ____Placeholder_e_modifier } e_modifier ;
typedef int EFT ;


 int FMTCHECK_CHARPOINTER ;
 int FMTCHECK_DOUBLE ;
 int FMTCHECK_INT ;
 int FMTCHECK_INTMAXT ;
 int FMTCHECK_INTMAXTPOINTER ;
 int FMTCHECK_INTPOINTER ;
 int FMTCHECK_LONG ;
 int FMTCHECK_LONGDOUBLE ;
 int FMTCHECK_LONGPOINTER ;
 int FMTCHECK_PTRDIFFT ;
 int FMTCHECK_PTRDIFFTPOINTER ;
 int FMTCHECK_QUAD ;
 int FMTCHECK_QUADPOINTER ;
 int FMTCHECK_SHORTPOINTER ;
 int FMTCHECK_SIZET ;
 int FMTCHECK_SIZETPOINTER ;
 int FMTCHECK_STRING ;
 int FMTCHECK_UNKNOWN ;
 int FMTCHECK_WINTT ;
 int FMTCHECK_WSTRING ;
 int RETURN (char const**,char const*,int ) ;
 scalar_t__ strchr (char*,char const) ;

__attribute__((used)) static EFT
get_next_format_from_precision(const char **pf)
{
 enum e_modifier modifier;
 const char *f;

 f = *pf;
 switch (*f) {
 case 'h':
  f++;
  if (!*f) RETURN(pf,f,FMTCHECK_UNKNOWN);
  if (*f == 'h') {
   f++;
   modifier = 136;
  } else {
   modifier = 129;
  }
  break;
 case 'j':
  f++;
  modifier = 135;
  break;
 case 'l':
  f++;
  if (!*f) RETURN(pf,f,FMTCHECK_UNKNOWN);
  if (*f == 'l') {
   f++;
   modifier = 130;
  } else {
   modifier = 134;
  }
  break;
 case 'q':
  f++;
  modifier = 130;
  break;
 case 't':
  f++;
  modifier = 131;
  break;
 case 'z':
  f++;
  modifier = 128;
  break;
 case 'L':
  f++;
  modifier = 133;
  break;
 default:
  modifier = 132;
  break;
 }
 if (!*f) RETURN(pf,f,FMTCHECK_UNKNOWN);
 if (strchr("diouxX", *f)) {
  switch (modifier) {
  case 134:
   RETURN(pf,f,FMTCHECK_LONG);
  case 130:
   RETURN(pf,f,FMTCHECK_QUAD);
  case 135:
   RETURN(pf,f,FMTCHECK_INTMAXT);
  case 131:
   RETURN(pf,f,FMTCHECK_PTRDIFFT);
  case 128:
   RETURN(pf,f,FMTCHECK_SIZET);
  case 136:
  case 129:
  case 132:
   RETURN(pf,f,FMTCHECK_INT);
  default:
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  }
 }
 if (*f == 'n') {
  switch (modifier) {
  case 136:
   RETURN(pf,f,FMTCHECK_CHARPOINTER);
  case 129:
   RETURN(pf,f,FMTCHECK_SHORTPOINTER);
  case 134:
   RETURN(pf,f,FMTCHECK_LONGPOINTER);
  case 130:
   RETURN(pf,f,FMTCHECK_QUADPOINTER);
  case 135:
   RETURN(pf,f,FMTCHECK_INTMAXTPOINTER);
  case 131:
   RETURN(pf,f,FMTCHECK_PTRDIFFTPOINTER);
  case 128:
   RETURN(pf,f,FMTCHECK_SIZETPOINTER);
  case 132:
   RETURN(pf,f,FMTCHECK_INTPOINTER);
  default:
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  }
 }
 if (strchr("DOU", *f)) {
  if (modifier != 132)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  RETURN(pf,f,FMTCHECK_LONG);
 }

 if (strchr("aAeEfFgG", *f)) {
  switch (modifier) {
  case 133:
   RETURN(pf,f,FMTCHECK_LONGDOUBLE);
  case 134:
  case 132:
   RETURN(pf,f,FMTCHECK_DOUBLE);
  default:
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  }
 }

 if (*f == 'c') {
  switch (modifier) {
  case 134:
   RETURN(pf,f,FMTCHECK_WINTT);
  case 132:
   RETURN(pf,f,FMTCHECK_INT);
  default:
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  }
 }
 if (*f == 'C') {
  if (modifier != 132)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  RETURN(pf,f,FMTCHECK_WINTT);
 }
 if (*f == 's') {
  switch (modifier) {
  case 134:
   RETURN(pf,f,FMTCHECK_WSTRING);
  case 132:
   RETURN(pf,f,FMTCHECK_STRING);
  default:
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  }
 }
 if (*f == 'S') {
  if (modifier != 132)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  RETURN(pf,f,FMTCHECK_WSTRING);
 }
 if (*f == 'p') {
  if (modifier != 132)
   RETURN(pf,f,FMTCHECK_UNKNOWN);
  RETURN(pf,f,FMTCHECK_LONG);
 }
 RETURN(pf,f,FMTCHECK_UNKNOWN);

}
