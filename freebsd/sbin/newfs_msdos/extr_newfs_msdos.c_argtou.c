
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef scalar_t__ u_int ;


 scalar_t__ errno ;
 int errx (int,char*,char const*,char const*) ;
 scalar_t__ strtoul (char const*,char**,int ) ;

__attribute__((used)) static u_int
argtou(const char *arg, u_int lo, u_int hi, const char *msg)
{
    char *s;
    u_long x;

    errno = 0;
    x = strtoul(arg, &s, 0);
    if (errno || !*arg || *s || x < lo || x > hi)
 errx(1, "%s: bad %s", arg, msg);
    return x;
}
