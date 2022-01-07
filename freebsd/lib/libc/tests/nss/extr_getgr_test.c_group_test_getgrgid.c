
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_test_data {int dummy; } ;
struct group {int gr_gid; } ;


 scalar_t__ compare_group (struct group*,struct group*,int *) ;
 int dump_group (struct group*) ;
 struct group* getgrgid (int ) ;
 scalar_t__ group_check_ambiguity (struct group_test_data*,struct group*) ;
 scalar_t__ group_test_correctness (struct group*,int *) ;
 int printf (char*) ;

__attribute__((used)) static int
group_test_getgrgid(struct group *grp_model, void *mdata)
{
 struct group *grp;

 printf("testing getgrgid() with the following data...\n");
 dump_group(grp_model);

 grp = getgrgid(grp_model->gr_gid);
 if (group_test_correctness(grp, ((void*)0)) != 0 ||
     (compare_group(grp, grp_model, ((void*)0)) != 0 &&
      group_check_ambiguity((struct group_test_data *)mdata, grp) != 0)) {
  return (-1);
 } else {
  return (0);
 }
}
