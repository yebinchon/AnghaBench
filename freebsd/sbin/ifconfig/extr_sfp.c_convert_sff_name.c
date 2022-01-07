
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,char*) ;

__attribute__((used)) static void
convert_sff_name(char *buf, size_t size, char *xbuf)
{
 char *p;

 for (p = &xbuf[16]; *(p - 1) == 0x20; p--)
  ;
 *p = '\0';
 snprintf(buf, size, "%s", xbuf);
}
