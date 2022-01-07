
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_mode; } ;
typedef TYPE_1__ stat_t ;
typedef int U32 ;


 scalar_t__ S_ISDIR (int) ;
 int _S_IFDIR ;
 int _stat64 (char const*,TYPE_1__*) ;
 int stat (char const*,TYPE_1__*) ;

U32 UTIL_isDirectory(const char* infilename)
{
    int r;
    stat_t statbuf;




    r = stat(infilename, &statbuf);
    if (!r && S_ISDIR(statbuf.st_mode)) return 1;

    return 0;
}
