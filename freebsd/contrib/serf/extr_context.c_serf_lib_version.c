
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERF_MAJOR_VERSION ;
 int SERF_MINOR_VERSION ;
 int SERF_PATCH_VERSION ;

void serf_lib_version(int *major, int *minor, int *patch)
{
    *major = SERF_MAJOR_VERSION;
    *minor = SERF_MINOR_VERSION;
    *patch = SERF_PATCH_VERSION;
}
