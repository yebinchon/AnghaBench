
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_dispatch (int,char**,int *) ;
 int cmd_init () ;
 int cmd_load_dir (char*,int *,int *) ;

int
main(int argc, char *argv[])
{

 cmd_init();

 cmd_load_dir("/lib/nvmecontrol", ((void*)0), ((void*)0));
 cmd_load_dir("/usr/local/lib/nvmecontrol", ((void*)0), ((void*)0));

 cmd_dispatch(argc, argv, ((void*)0));

 return (0);
}
