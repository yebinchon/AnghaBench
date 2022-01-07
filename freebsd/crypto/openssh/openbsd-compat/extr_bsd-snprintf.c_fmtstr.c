
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DOPR_OUTCH (char*,size_t,size_t,char) ;
 int DP_F_MINUS ;
 int printf (char*,int,int,char*) ;

__attribute__((used)) static int
fmtstr(char *buffer, size_t *currlen, size_t maxlen,
    char *value, int flags, int min, int max)
{
 int padlen, strln;
 int cnt = 0;




 if (value == 0) {
  value = "<NULL>";
 }

 for (strln = 0; strln < max && value[strln]; ++strln);
 padlen = min - strln;
 if (padlen < 0)
  padlen = 0;
 if (flags & DP_F_MINUS)
  padlen = -padlen;

 while ((padlen > 0) && (cnt < max)) {
  DOPR_OUTCH(buffer, *currlen, maxlen, ' ');
  --padlen;
  ++cnt;
 }
 while (*value && (cnt < max)) {
  DOPR_OUTCH(buffer, *currlen, maxlen, *value);
  value++;
  ++cnt;
 }
 while ((padlen < 0) && (cnt < max)) {
  DOPR_OUTCH(buffer, *currlen, maxlen, ' ');
  ++padlen;
  ++cnt;
 }
 return 0;
}
