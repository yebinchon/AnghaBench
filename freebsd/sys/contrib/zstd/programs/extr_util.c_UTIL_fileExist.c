
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stat_t ;


 int _stat64 (char const*,int *) ;
 int stat (char const*,int *) ;

int UTIL_fileExist(const char* filename)
{
    stat_t statbuf;



    int const stat_error = stat(filename, &statbuf);

    return !stat_error;
}
