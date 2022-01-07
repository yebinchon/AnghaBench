
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INC_CHKCURSOR (char*) ;
 char* altarg ;
 char* argbase ;
 int slrflag ;
 char* stringbase ;

char *
slurpstring(void)
{
 static char bangstr[2] = { '!', '\0' };
 static char dollarstr[2] = { '$', '\0' };
 int got_one = 0;
 char *sb = stringbase;
 char *ap = argbase;
 char *tmp = argbase;

 if (*sb == '!' || *sb == '$') {
  switch (slrflag) {
   case 0:
    slrflag++;
    INC_CHKCURSOR(stringbase);
    return ((*sb == '!') ? bangstr : dollarstr);

   case 1:
    slrflag++;
    altarg = stringbase;
    break;
   default:
    break;
  }
 }

S0:
 switch (*sb) {

 case '\0':
  goto OUT;

 case ' ':
 case '\t':
  INC_CHKCURSOR(sb);
  goto S0;

 default:
  switch (slrflag) {
   case 0:
    slrflag++;
    break;
   case 1:
    slrflag++;
    altarg = sb;
    break;
   default:
    break;
  }
  goto S1;
 }

S1:
 switch (*sb) {

 case ' ':
 case '\t':
 case '\0':
  goto OUT;

 case '\\':
  INC_CHKCURSOR(sb);
  goto S2;

 case '"':
  INC_CHKCURSOR(sb);
  goto S3;

 default:
  *ap = *sb;
  ap++;
  INC_CHKCURSOR(sb);
  got_one = 1;
  goto S1;
 }

S2:
 switch (*sb) {

 case '\0':
  goto OUT;

 default:
  *ap = *sb;
  ap++;
  INC_CHKCURSOR(sb);
  got_one = 1;
  goto S1;
 }

S3:
 switch (*sb) {

 case '\0':
  goto OUT;

 case '"':
  INC_CHKCURSOR(sb);
  goto S1;

 default:
  *ap = *sb;
  ap++;
  INC_CHKCURSOR(sb);
  got_one = 1;
  goto S3;
 }

OUT:
 if (got_one)
  *ap++ = '\0';
 argbase = ap;
 stringbase = sb;
 if (got_one) {
  return (tmp);
 }
 switch (slrflag) {
  case 0:
   slrflag++;
   break;
  case 1:
   slrflag++;
   altarg = ((void*)0);
   break;
  default:
   break;
 }
 return (((void*)0));
}
