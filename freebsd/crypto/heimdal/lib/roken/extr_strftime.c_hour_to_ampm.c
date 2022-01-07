
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** ampm ;

__attribute__((used)) static const char *
hour_to_ampm (int hour)
{
    return ampm[hour / 12];
}
