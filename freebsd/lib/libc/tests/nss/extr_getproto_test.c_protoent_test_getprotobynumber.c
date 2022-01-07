
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent_test_data {int dummy; } ;
struct protoent {int p_proto; } ;


 scalar_t__ compare_protoent (struct protoent*,struct protoent*,int *) ;
 int dump_protoent (struct protoent*) ;
 struct protoent* getprotobynumber (int ) ;
 int printf (char*) ;
 scalar_t__ protoent_check_ambiguity (struct protoent_test_data*,struct protoent*) ;
 scalar_t__ protoent_test_correctness (struct protoent*,int *) ;

__attribute__((used)) static int
protoent_test_getprotobynumber(struct protoent *pe_model, void *mdata)
{
 struct protoent *pe;

 printf("testing getprotobyport() with the following data...\n");
 dump_protoent(pe_model);

 pe = getprotobynumber(pe_model->p_proto);
 if ((protoent_test_correctness(pe, ((void*)0)) != 0) ||
     ((compare_protoent(pe, pe_model, ((void*)0)) != 0) &&
     (protoent_check_ambiguity((struct protoent_test_data *)mdata, pe)
     != 0))) {
  printf("not ok\n");
  return (-1);
 } else {
  printf("ok\n");
  return (0);
 }
}
