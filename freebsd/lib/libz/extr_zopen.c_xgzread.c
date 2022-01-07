
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gzread (void*,char*,int) ;

__attribute__((used)) static int
xgzread(void *cookie, char *data, int size)
{
    return gzread(cookie, data, size);
}
