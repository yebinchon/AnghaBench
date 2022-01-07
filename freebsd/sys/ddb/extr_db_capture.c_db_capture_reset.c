
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ db_capture_bufoff ;
 scalar_t__ db_capture_bufpadding ;
 scalar_t__ db_capture_inprogress ;

__attribute__((used)) static void
db_capture_reset(void)
{

 db_capture_inprogress = 0;
 db_capture_bufoff = 0;
 db_capture_bufpadding = 0;
}
