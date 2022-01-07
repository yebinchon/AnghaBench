
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kgdb_trgt_close (int ) ;

__attribute__((used)) static void
kgdb_core_cleanup(void *arg)
{

 kgdb_trgt_close(0);
}
