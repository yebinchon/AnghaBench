
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ db_capture_inpager ;

void
db_capture_exitpager(void)
{

 db_capture_inpager = 0;
}
