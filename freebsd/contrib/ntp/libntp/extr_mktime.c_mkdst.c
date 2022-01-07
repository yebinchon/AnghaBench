
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_isdst; int tm_min; int tm_hour; } ;


 scalar_t__ DSTMINUTES ;
 int MINSPERHOUR ;
 int normalize (int *,int *,int ) ;

__attribute__((used)) static struct tm *
mkdst(
 struct tm * tmp
 )
{

    static struct tm tmbuf;

    tmbuf = *tmp;
    tmbuf.tm_isdst = 1;
    tmbuf.tm_min += DSTMINUTES;
    normalize(&tmbuf.tm_hour, &tmbuf.tm_min, MINSPERHOUR);
    return &tmbuf;
}
