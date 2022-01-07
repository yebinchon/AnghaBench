
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int st_mode; } ;
typedef TYPE_1__ stat_t ;


 int S_IFREG ;
 int S_ISREG (int) ;
 int _stat64 (char const*,TYPE_1__*) ;
 int stat (char const*,TYPE_1__*) ;

int UTIL_getFileStat(const char* infilename, stat_t *statbuf)
{
    int r;




    r = stat(infilename, statbuf);
    if (r || !S_ISREG(statbuf->st_mode)) return 0;

    return 1;
}
