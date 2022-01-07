
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 char* asctime (int ) ;
 int localtime (int const* const) ;

char *
ctime(const time_t *const timep)
{






 return asctime(localtime(timep));
}
