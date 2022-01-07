
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;


 scalar_t__ PF_OP_EQ ;
 scalar_t__ PF_OP_GE ;
 scalar_t__ PF_OP_GT ;
 scalar_t__ PF_OP_IRG ;
 scalar_t__ PF_OP_LE ;
 scalar_t__ PF_OP_LT ;
 scalar_t__ PF_OP_NE ;
 scalar_t__ PF_OP_RRG ;
 scalar_t__ PF_OP_XRG ;
 int printf (char*,char const*,...) ;

void
print_op(u_int8_t op, const char *a1, const char *a2)
{
 if (op == PF_OP_IRG)
  printf(" %s >< %s", a1, a2);
 else if (op == PF_OP_XRG)
  printf(" %s <> %s", a1, a2);
 else if (op == PF_OP_EQ)
  printf(" = %s", a1);
 else if (op == PF_OP_NE)
  printf(" != %s", a1);
 else if (op == PF_OP_LT)
  printf(" < %s", a1);
 else if (op == PF_OP_LE)
  printf(" <= %s", a1);
 else if (op == PF_OP_GT)
  printf(" > %s", a1);
 else if (op == PF_OP_GE)
  printf(" >= %s", a1);
 else if (op == PF_OP_RRG)
  printf(" %s:%s", a1, a2);
}
