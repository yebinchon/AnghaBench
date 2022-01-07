
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int buf ;


 int BYPERLINE ;
 int NGLOGX (char*,char*) ;
 scalar_t__ isprint (int const) ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char*) ;

void
_NgDebugBytes(const u_char *ptr, int len)
{
 char buf[100];
 int k, count;



 for (count = 0; count < len; ptr += 16, count += 16) {


  snprintf(buf, sizeof(buf), "%04x:  ", count);
  for (k = 0; k < 16; k++, count++)
   if (count < len)
    snprintf(buf + strlen(buf),
        sizeof(buf) - strlen(buf), "%02x ", ptr[k]);
   else
    snprintf(buf + strlen(buf),
        sizeof(buf) - strlen(buf), "   ");
  snprintf(buf + strlen(buf), sizeof(buf) - strlen(buf), "  ");
  count -= 16;


  for (k = 0; k < 16; k++, count++)
   if (count < len)
    snprintf(buf + strlen(buf),
        sizeof(buf) - strlen(buf),
        "%c", isprint(ptr[k]) ? ptr[k] : '.');
   else
    snprintf(buf + strlen(buf),
        sizeof(buf) - strlen(buf), "  ");
  count -= 16;


  NGLOGX("%s", buf);
 }
}
