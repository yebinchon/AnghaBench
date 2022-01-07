
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* g_device_path_open (char const*,int *,int ) ;

char *
g_device_path(const char *devpath)
{
 return (g_device_path_open(devpath, ((void*)0), 0));
}
