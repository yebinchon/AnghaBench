
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit_seen ;

int
exit_kadmin (void *opt, int argc, char **argv)
{
    exit_seen = 1;
    return 0;
}
