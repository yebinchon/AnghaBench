
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcasecmp (char const*,char*) ;

int
option_clear_or_none(const char *o)
{
 return o == ((void*)0) || strcasecmp(o, "none") == 0;
}
