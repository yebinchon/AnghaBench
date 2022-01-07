
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int INSIST (int) ;
 int NTP_SHIFT ;
 int ctl_putunqstr (char const*,char*,size_t) ;
 int snprintf (char*,size_t,char*,double) ;

__attribute__((used)) static void
ctl_putarray(
 const char *tag,
 double *arr,
 int start
 )
{
 char *cp, *ep;
 char buffer[200];
 int i, rc;

 cp = buffer;
 ep = buffer + sizeof(buffer);
 i = start;
 do {
  if (i == 0)
   i = NTP_SHIFT;
  i--;
  rc = snprintf(cp, (size_t)(ep - cp), " %.2f", arr[i] * 1e3);
  INSIST(rc >= 0 && (size_t)rc < (size_t)(ep - cp));
  cp += rc;
 } while (i != start);
 ctl_putunqstr(tag, buffer, (size_t)(cp - buffer));
}
