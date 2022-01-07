
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int DIR ;


 int S_ISDIR (int ) ;
 int * opendir (char const*) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static DIR *
Opendir(const char *str)
{




    if (!*str)
 return (opendir("."));







    return opendir(str);
}
