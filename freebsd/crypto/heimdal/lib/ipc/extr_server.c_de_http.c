
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isxdigit (unsigned char) ;
 int sscanf (char*,char*,unsigned int*) ;

__attribute__((used)) static int
de_http(char *buf)
{
    unsigned char *p, *q;
    for(p = q = (unsigned char *)buf; *p; p++, q++) {
 if(*p == '%' && isxdigit(p[1]) && isxdigit(p[2])) {
     unsigned int x;
     if(sscanf((char *)p + 1, "%2x", &x) != 1)
  return -1;
     *q = x;
     p += 2;
 } else
     *q = *p;
    }
    *q = '\0';
    return 0;
}
