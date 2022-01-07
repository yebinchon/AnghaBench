
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ERR_BADSCALE ;
 int stderror (int ,char const*) ;
 scalar_t__ strtail (int *,char const*) ;

__attribute__((used)) static void
limtail(Char *cp, const char *str)
{
    if (strtail(cp, str))
 stderror(ERR_BADSCALE, str);
}
