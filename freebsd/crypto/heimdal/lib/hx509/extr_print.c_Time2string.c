
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int Time ;


 int ENOMEM ;
 int _hx509_Time2time_t (int const*) ;
 struct tm* gmtime (int *) ;
 char* malloc (int) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static int
Time2string(const Time *T, char **str)
{
    time_t t;
    char *s;
    struct tm *tm;

    *str = ((void*)0);
    t = _hx509_Time2time_t(T);
    tm = gmtime (&t);
    s = malloc(30);
    if (s == ((void*)0))
 return ENOMEM;
    strftime(s, 30, "%Y-%m-%d %H:%M:%S", tm);
    *str = s;
    return 0;
}
