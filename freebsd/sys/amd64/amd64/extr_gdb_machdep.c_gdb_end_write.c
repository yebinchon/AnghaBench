
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int restore_wp (int ) ;

void
gdb_end_write(void *arg)
{

 restore_wp(arg != ((void*)0));
}
