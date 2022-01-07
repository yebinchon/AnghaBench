
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent_test_data {int dummy; } ;
struct protoent {char* p_name; char** p_aliases; } ;


 scalar_t__ compare_protoent (struct protoent*,struct protoent*,int *) ;
 int dump_protoent (struct protoent*) ;
 struct protoent* getprotobyname (char*) ;
 int printf (char*) ;
 scalar_t__ protoent_check_ambiguity (struct protoent_test_data*,struct protoent*) ;
 scalar_t__ protoent_test_correctness (struct protoent*,int *) ;

__attribute__((used)) static int
protoent_test_getprotobyname(struct protoent *pe_model, void *mdata)
{
 char **alias;
 struct protoent *pe;

 printf("testing getprotobyname() with the following data:\n");
 dump_protoent(pe_model);

 pe = getprotobyname(pe_model->p_name);
 if (protoent_test_correctness(pe, ((void*)0)) != 0)
  goto errfin;

 if ((compare_protoent(pe, pe_model, ((void*)0)) != 0) &&
     (protoent_check_ambiguity((struct protoent_test_data *)mdata, pe)
     !=0))
     goto errfin;

 for (alias = pe_model->p_aliases; *alias; ++alias) {
  pe = getprotobyname(*alias);

  if (protoent_test_correctness(pe, ((void*)0)) != 0)
   goto errfin;

  if ((compare_protoent(pe, pe_model, ((void*)0)) != 0) &&
      (protoent_check_ambiguity(
      (struct protoent_test_data *)mdata, pe) != 0))
      goto errfin;
 }

 printf("ok\n");
 return (0);

errfin:
 printf("not ok\n");

 return (-1);
}
