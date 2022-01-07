
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipfw_obj_header ;




 int EX_USAGE ;
 int errno ;
 int errx (int ,char*,...) ;
 scalar_t__ table_check_name (char*) ;
 scalar_t__ table_do_swap (int *,char*) ;

__attribute__((used)) static int
table_swap(ipfw_obj_header *oh, char *second)
{

 if (table_check_name(second) != 0)
  errx(EX_USAGE, "table name %s is invalid", second);

 if (table_do_swap(oh, second) == 0)
  return (0);

 switch (errno) {
 case 128:
  errx(EX_USAGE, "Unable to swap table: check types");
 case 129:
  errx(EX_USAGE, "Unable to swap table: check limits");
 }

 return (0);
}
