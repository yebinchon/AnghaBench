
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int EVENTHANDLER_INVOKE (int ,int,int*) ;
 int WD_INTERVAL ;
 int WD_TO_NEVER ;
 int db_error (char*) ;
 int db_expression (int*) ;
 int db_printf (char*) ;
 int db_radix ;
 int db_skip_to_eol () ;
 int watchdog_list ;

__attribute__((used)) static void
db_watchdog(db_expr_t dummy1, bool dummy2, db_expr_t dummy3, char *dummy4)
{
 db_expr_t old_radix, tout;
 int err, i;

 old_radix = db_radix;
 db_radix = 10;
 err = db_expression(&tout);
 db_skip_to_eol();
 db_radix = old_radix;


 if (err == 0) {
  db_printf("No argument provided, disabling watchdog\n");
  tout = 0;
 } else if ((tout & WD_INTERVAL) == WD_TO_NEVER) {
  db_error("Out of range watchdog interval\n");
  return;
 }
 EVENTHANDLER_INVOKE(watchdog_list, tout, &i);
}
