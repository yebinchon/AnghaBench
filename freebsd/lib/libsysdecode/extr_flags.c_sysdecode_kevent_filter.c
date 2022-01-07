
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int keventfilters ;
 char const* lookup_value (int ,int) ;

const char *
sysdecode_kevent_filter(int filter)
{

 return (lookup_value(keventfilters, filter));
}
