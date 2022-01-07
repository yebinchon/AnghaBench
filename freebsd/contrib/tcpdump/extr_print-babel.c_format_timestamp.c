
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int buf ;


 int snprintf (char*,int,char*,int const,int const) ;

__attribute__((used)) static const char *
format_timestamp(const uint32_t i)
{
    static char buf[sizeof("0000.000000s")];
    snprintf(buf, sizeof(buf), "%u.%06us", i / 1000000, i % 1000000);
    return buf;
}
