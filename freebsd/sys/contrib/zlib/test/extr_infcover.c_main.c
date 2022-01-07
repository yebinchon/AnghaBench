
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cover_back () ;
 int cover_fast () ;
 int cover_inflate () ;
 int cover_support () ;
 int cover_trees () ;
 int cover_wrap () ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* zlibVersion () ;

int main(void)
{
    fprintf(stderr, "%s\n", zlibVersion());
    cover_support();
    cover_wrap();
    cover_back();
    cover_inflate();
    cover_trees();
    cover_fast();
    return 0;
}
