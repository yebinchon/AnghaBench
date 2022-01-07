
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_revision {scalar_t__ revnum; } ;



__attribute__((used)) static int
compare_path_revisions(const void *a, const void *b)
{
  struct path_revision *a_pr = *(struct path_revision *const *)a;
  struct path_revision *b_pr = *(struct path_revision *const *)b;

  if (a_pr->revnum == b_pr->revnum)
    return 0;

  return a_pr->revnum < b_pr->revnum ? 1 : -1;
}
