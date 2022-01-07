
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pfctl_table (int ,int *,int *,char*,int *,char const*,int) ;

int
pfctl_show_tables(const char *anchor, int opts)
{
 return pfctl_table(0, ((void*)0), ((void*)0), "-s", ((void*)0), anchor, opts);
}
