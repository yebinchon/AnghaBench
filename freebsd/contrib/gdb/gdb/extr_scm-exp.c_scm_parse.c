
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; char* ptr; } ;


 int OP_EXPRSTRING ;
 int USE_EXPRSTRING ;
 char* lexptr ;
 int scm_lreadr (int ) ;
 TYPE_1__ str ;
 int write_exp_elt_opcode (int ) ;
 int write_exp_string (TYPE_1__) ;

int
scm_parse (void)
{
  char *start;
  while (*lexptr == ' ')
    lexptr++;
  start = lexptr;
  scm_lreadr (USE_EXPRSTRING);







  return 0;
}
