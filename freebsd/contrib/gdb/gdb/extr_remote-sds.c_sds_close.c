
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * sds_desc ;
 int serial_close (int *) ;

__attribute__((used)) static void
sds_close (int quitting)
{
  if (sds_desc)
    serial_close (sds_desc);
  sds_desc = ((void*)0);
}
