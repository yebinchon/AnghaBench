
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_test_data {int dummy; } ;
struct group {int dummy; } ;


 int TEST_DATA_APPEND (int ,struct group_test_data*,struct group*) ;
 int endgrent () ;
 struct group* getgrent () ;
 int group ;
 scalar_t__ group_test_correctness (struct group*,int *) ;
 int setgroupent (int) ;

__attribute__((used)) static int
group_fill_test_data(struct group_test_data *td)
{
 struct group *grp;

 setgroupent(1);
 while ((grp = getgrent()) != ((void*)0)) {
  if (group_test_correctness(grp, ((void*)0)) == 0)
   TEST_DATA_APPEND(group, td, grp);
  else
   return (-1);
 }
 endgrent();

 return (0);
}
