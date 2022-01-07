
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_load (char*,int) ;
 int inferior_ptid ;
 int null_ptid ;

__attribute__((used)) static void
sds_load (char *filename, int from_tty)
{
  generic_load (filename, from_tty);

  inferior_ptid = null_ptid;
}
