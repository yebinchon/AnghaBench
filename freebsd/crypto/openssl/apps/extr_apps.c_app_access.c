
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _access (char const*,int) ;
 int access (char const*,int) ;

int app_access(const char* name, int flag)
{



    return access(name, flag);

}
