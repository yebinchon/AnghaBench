
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sigset_t ;



__attribute__((used)) static int
_nc_sigemptyset(sigset_t * mask)
{
    *mask = 0;
    return 0;
}
