
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileno (int ) ;
 int stdout ;

int fileno_stdout(void)
{
    return fileno(stdout);
}
