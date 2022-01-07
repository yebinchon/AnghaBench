
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni {int custat; } ;
typedef enum cu_stat { ____Placeholder_cu_stat } cu_stat ;


 int cufilt ;
 int uni_undel (struct uni*,int ,int *) ;

__attribute__((used)) static void
set_custat(struct uni *uni, enum cu_stat nstate)
{
 if (uni->custat != nstate) {
  uni->custat = nstate;
  uni_undel(uni, cufilt, ((void*)0));
 }
}
