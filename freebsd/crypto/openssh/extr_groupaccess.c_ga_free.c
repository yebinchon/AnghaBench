
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *****) ;
 int ***** groups_byname ;
 int ngroups ;

void
ga_free(void)
{
 int i;

 if (ngroups > 0) {
  for (i = 0; i < ngroups; i++)
   free(groups_byname[i]);
  ngroups = 0;
  free(groups_byname);
 }
}
