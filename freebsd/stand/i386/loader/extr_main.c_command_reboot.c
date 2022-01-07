
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* dv_cleanup ) () ;} ;


 int __exit (int ) ;
 int delay (int) ;
 TYPE_1__** devsw ;
 int printf (char*) ;
 int stub1 () ;

__attribute__((used)) static int
command_reboot(int argc, char *argv[])
{
    int i;

    for (i = 0; devsw[i] != ((void*)0); ++i)
 if (devsw[i]->dv_cleanup != ((void*)0))
     (devsw[i]->dv_cleanup)();

    printf("Rebooting...\n");
    delay(1000000);
    __exit(0);
}
