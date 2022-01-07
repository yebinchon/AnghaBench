
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;



__attribute__((used)) static int
kgdb_trgt_ignore_breakpoints(CORE_ADDR addr, char *contents)
{

 return 0;
}
