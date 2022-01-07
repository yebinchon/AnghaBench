
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int DTF_HIDEW ;
 int DTF_NODUP ;
 int * __opendir2 (char const*,int) ;

DIR *
opendir(const char *name)
{

 return (__opendir2(name, DTF_HIDEW|DTF_NODUP));
}
