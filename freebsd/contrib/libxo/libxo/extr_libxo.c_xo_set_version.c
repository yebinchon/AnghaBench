
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xo_set_version_h (int *,char const*) ;

void
xo_set_version (const char *version)
{
    xo_set_version_h(((void*)0), version);
}
