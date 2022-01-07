
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef char Char ;


 int isdigit (unsigned char) ;

__attribute__((used)) static time_t
a2time_t(Char *wordx)
{



    time_t ret;
    Char *s;
    int ct;

    if (!wordx || *(s = wordx) != '+')
 return (time_t)0;

    for (++s, ret = 0, ct = 0; *s; ++s, ++ct) {
 if (!isdigit((unsigned char)*s))
     return (time_t)0;
 ret = ret * 10 + (time_t)((unsigned char)*s - '0');
    }

    if (ct != 10)
 return (time_t)0;

    return ret;
}
