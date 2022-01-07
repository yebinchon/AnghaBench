
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_capture_inprogress ;
 int db_printf (char*) ;

__attribute__((used)) static void
db_capture_start(void)
{

 if (db_capture_inprogress) {
  db_printf("Capture already started\n");
  return;
 }
 db_capture_inprogress = 1;
}
