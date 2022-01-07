
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_LARGEFILE ;
 int O_RDONLY ;
 int _PATH_DEVNULL ;
 int dcopy (int,int) ;
 scalar_t__ didfds ;
 int dmove (int,int ) ;
 int xclose (int) ;
 int xopen (int ,int) ;

void
donefds(void)
{

    xclose(0);
    xclose(1);
    xclose(2);
    didfds = 0;
}
