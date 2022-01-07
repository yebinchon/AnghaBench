
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 int stat (char const*,struct stat*) ;
 char* strend (char const*) ;

__attribute__((used)) static int
Stat(const char *fn, struct stat *sb)
{
    int st;

    st = stat(fn, sb);




    return st;
}
