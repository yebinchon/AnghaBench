
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 scalar_t__ errno ;
 int errx (int,char*,char const*,char const*) ;
 scalar_t__ strtoll (char const*,char**,int ) ;

__attribute__((used)) static off_t
argtooff(const char *arg, const char *msg)
{
    char *s;
    off_t x;

    errno = 0;
    x = strtoll(arg, &s, 0);

    if (errno || x < 0 || (s[0] && s[1]) )
 errx(1, "%s: bad %s", arg, msg);
    if (*s) {
 switch (*s) {
 default:
     errx(1, "%s: bad %s", arg, msg);


 case 's':
 case 'S':
     x <<= 9;
     break;

 case 'k':
 case 'K':
     x <<= 10;
     break;

 case 'm':
 case 'M':
     x <<= 20;
     break;

 case 'g':
 case 'G':
     x <<= 30;
     break;

 case 'p':
 case 'P':
 case 'l':
 case 'L':
     errx(1, "%s: not supported yet %s", arg, msg);

 }
    }
    return x;
}
