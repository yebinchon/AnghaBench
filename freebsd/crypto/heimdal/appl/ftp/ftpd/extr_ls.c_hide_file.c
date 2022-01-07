
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LS_IGNORE_DOT ;
 int LS_SHOW_ALL ;

__attribute__((used)) static int
hide_file(const char *filename, int flags)
{
    if(filename[0] != '.')
 return 0;
    if((flags & LS_IGNORE_DOT))
 return 1;
    if(filename[1] == '\0' || (filename[1] == '.' && filename[2] == '\0')) {
 if((flags & LS_SHOW_ALL))
     return 0;
 else
     return 1;
    }
    return 0;
}
