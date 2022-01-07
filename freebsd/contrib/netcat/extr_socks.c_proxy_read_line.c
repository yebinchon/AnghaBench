
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomicio (int ,int,char*,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int read ;

__attribute__((used)) static int
proxy_read_line(int fd, char *buf, size_t bufsz)
{
 size_t off;

 for(off = 0;;) {
  if (off >= bufsz)
   errx(1, "proxy read too long");
  if (atomicio(read, fd, buf + off, 1) != 1)
   err(1, "proxy read");

  if (buf[off] == '\r')
   continue;
  if (buf[off] == '\n') {
   buf[off] = '\0';
   break;
  }
  off++;
 }
 return (off);
}
