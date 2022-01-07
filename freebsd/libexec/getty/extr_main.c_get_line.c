
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int,char*,int) ;

__attribute__((used)) static char *
get_line(int fd)
{
 size_t i = 0;
 static char linebuf[512];





 while (i < (sizeof linebuf - 3) && read(fd, linebuf+i, 1)==1) {
  if (linebuf[i] == '\n') {

   linebuf[i++] = '\r';
   linebuf[i++] = '\n';
   linebuf[i] = '\0';
   return linebuf;
  }
  ++i;
 }
 linebuf[i] = '\0';
 return i ? linebuf : 0;
}
