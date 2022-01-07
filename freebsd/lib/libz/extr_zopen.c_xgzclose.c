
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gzclose (void*) ;

__attribute__((used)) static int
xgzclose(void *cookie)
{
    return gzclose(cookie);
}
