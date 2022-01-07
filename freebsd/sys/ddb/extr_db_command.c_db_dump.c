
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;




 int db_printf (char*,...) ;
 int doadump (int) ;
 scalar_t__ textdump_pending ;

__attribute__((used)) static void
db_dump(db_expr_t dummy, bool dummy2, db_expr_t dummy3, char *dummy4)
{
 int error;

 if (textdump_pending) {
  db_printf("textdump_pending set.\n"
      "run \"textdump unset\" first or \"textdump dump\" for a textdump.\n");
  return;
 }
 error = doadump(0);
 if (error) {
  db_printf("Cannot dump: ");
  switch (error) {
  case 129:
   db_printf("debugger got invoked while dumping.\n");
   break;
  case 128:
   db_printf("no dump device specified.\n");
   break;
  default:
   db_printf("unknown error (error=%d).\n", error);
   break;
  }
 }
}
