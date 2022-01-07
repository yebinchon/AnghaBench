
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_log () ;
 int setprogname (char*) ;

int
main(int argc, char **argv)
{
    setprogname(argv[0]);

    check_log();

    return 0;
}
