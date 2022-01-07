
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _nc_curr_col ;
 int _nc_syserr_abort (char*) ;
 char* bufptr ;
 char* bufstart ;

__attribute__((used)) static void
push_back(int c)

{
    if (bufptr == bufstart)
 _nc_syserr_abort("Can't backspace off beginning of line");
    *--bufptr = (char) c;
    _nc_curr_col--;
}
