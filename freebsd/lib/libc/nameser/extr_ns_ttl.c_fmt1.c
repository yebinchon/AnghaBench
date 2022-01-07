
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SPRINTF (char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int
fmt1(int t, char s, char **buf, size_t *buflen) {
 char tmp[50];
 size_t len;

 len = SPRINTF((tmp, "%d%c", t, s));
 if (len + 1 > *buflen)
  return (-1);
 strcpy(*buf, tmp);
 *buf += len;
 *buflen -= len;
 return (0);
}
