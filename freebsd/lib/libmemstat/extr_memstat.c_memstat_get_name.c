
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_type {char const* mt_name; } ;



const char *
memstat_get_name(const struct memory_type *mtp)
{

 return (mtp->mt_name);
}
