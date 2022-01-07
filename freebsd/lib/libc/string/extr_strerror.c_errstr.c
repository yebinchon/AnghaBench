
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;


 int EBUFSIZE ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void
errstr(int num, const char *uprefix, char *buf, size_t len)
{
 char *t;
 unsigned int uerr;
 char tmp[EBUFSIZE];

 t = tmp + sizeof(tmp);
 *--t = '\0';
 uerr = (num >= 0) ? num : -num;
 do {
  *--t = "0123456789"[uerr % 10];
 } while (uerr /= 10);
 if (num < 0)
  *--t = '-';
 *--t = ' ';
 *--t = ':';
 strlcpy(buf, uprefix, len);
 strlcat(buf, t, len);
}
