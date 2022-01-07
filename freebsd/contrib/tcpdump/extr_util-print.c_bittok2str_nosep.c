
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tok {int dummy; } ;


 char* bittok2str_internal (struct tok const*,char const*,int ,char*) ;

char *
bittok2str_nosep(register const struct tok *lp, register const char *fmt,
    register u_int v)
{
    return (bittok2str_internal(lp, fmt, v, ""));
}
