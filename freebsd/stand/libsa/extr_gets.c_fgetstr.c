
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c ;


 int read (int,char*,int) ;

int
fgetstr(char *buf, int size, int fd)
{
    char c;
    int err, len;

    size--;
    len = 0;
    while (size != 0) {
 err = read(fd, &c, sizeof(c));
 if (err < 0)
     return(-1);
 if (err == 0) {
     if (len == 0)
  return(-1);
     break;
 }
 if ((c == '\r') ||
     (c == '\n'))
     break;
 *buf++ = c;
 size--;
 len++;
    }
    *buf = 0;
    return(len);
}
