
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,char,char,char,char,char,char) ;

__attribute__((used)) static void
convert_sff_date(char *buf, size_t size, char *xbuf)
{

 snprintf(buf, size, "20%c%c-%c%c-%c%c", xbuf[0], xbuf[1],
     xbuf[2], xbuf[3], xbuf[4], xbuf[5]);
}
