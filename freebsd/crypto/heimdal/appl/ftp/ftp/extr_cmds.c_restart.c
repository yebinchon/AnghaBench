
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atol (char*) ;
 int printf (char*,...) ;
 scalar_t__ restart_point ;

void
restart(int argc, char **argv)
{

    if (argc != 2)
 printf("restart: offset not specified\n");
    else {
 restart_point = atol(argv[1]);
 printf("restarting at %ld. %s\n", (long)restart_point,
        "execute get, put or append to initiate transfer");
    }
}
