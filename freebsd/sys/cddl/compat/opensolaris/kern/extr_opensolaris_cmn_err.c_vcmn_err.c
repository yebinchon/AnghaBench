
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int buf ;







 int panic (char*,...) ;
 int printf (char*,...) ;
 int vprintf (char const*,int ) ;
 int vsnprintf (char*,int,char const*,int ) ;

void
vcmn_err(int ce, const char *fmt, va_list adx)
{
 char buf[256];
 const char *prefix;

 prefix = ((void*)0);
 switch (ce) {
 case 132:
  prefix = "Solaris(cont): ";
  break;
 case 130:
  prefix = "Solaris: NOTICE: ";
  break;
 case 128:
  prefix = "Solaris: WARNING: ";
  break;
 case 129:
  prefix = "Solaris(panic): ";
  break;
 case 131:
  break;
 default:
  panic("Solaris: unknown severity level");
 }
 if (ce == 129) {
  vsnprintf(buf, sizeof(buf), fmt, adx);
  panic("%s%s", prefix, buf);
 }
 if (ce != 131) {
  printf("%s", prefix);
  vprintf(fmt, adx);
  printf("\n");
 }
}
