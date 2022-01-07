
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent_test_data {int dummy; } ;
struct servent {int s_proto; int s_port; } ;


 scalar_t__ compare_servent (struct servent*,struct servent*,int *) ;
 int dump_servent (struct servent*) ;
 struct servent* getservbyport (int ,int ) ;
 int printf (char*) ;
 scalar_t__ servent_check_ambiguity (struct servent_test_data*,struct servent*) ;
 scalar_t__ servent_test_correctness (struct servent*,int *) ;

__attribute__((used)) static int
servent_test_getservbyport(struct servent *serv_model, void *mdata)
{
 struct servent *serv;

 printf("testing getservbyport() with the following data...\n");
 dump_servent(serv_model);

 serv = getservbyport(serv_model->s_port, serv_model->s_proto);
 if ((servent_test_correctness(serv, ((void*)0)) != 0) ||
     ((compare_servent(serv, serv_model, ((void*)0)) != 0) &&
     (servent_check_ambiguity((struct servent_test_data *)mdata, serv)
     != 0))) {
  printf("not ok\n");
  return (-1);
 } else {
  printf("ok\n");
  return (0);
 }
}
