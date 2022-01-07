
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_config_files () ;
 int check_escaped_strings () ;

int
main(int argc, char **argv)
{
    check_config_files();
    check_escaped_strings();
    return 0;
}
