
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INDENT ;
 int column ;
 int oldcol ;
 int outbuf ;
 int strcpy_DYN (int *,int ) ;
 int trailer ;
 int trim_trailing () ;

__attribute__((used)) static void
force_wrap(void)
{
    oldcol = column;
    trim_trailing();
    strcpy_DYN(&outbuf, trailer);
    column = INDENT;
}
