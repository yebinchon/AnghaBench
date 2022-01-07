
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** part_types ;

__attribute__((used)) static const char *
get_type(int t)
{
 const char *ret;

 ret = (t >= 0 && t <= 255) ? part_types[t] : ((void*)0);
 return ret ? ret : "unknown";
}
