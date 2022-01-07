
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 char const* format_interval (int const) ;

__attribute__((used)) static const char *
format_interval_update(const uint16_t i)
{
    return i == 0xFFFF ? "infinity" : format_interval(i);
}
