
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct cpstack {int dummy; } ;


 int delete_variable_1 (struct cpstack**,int*,struct varobj*,int,int) ;

__attribute__((used)) static int
delete_variable (struct cpstack **resultp, struct varobj *var,
   int only_children_p)
{
  int delcount = 0;

  delete_variable_1 (resultp, &delcount, var,
       only_children_p, 1 );

  return delcount;
}
