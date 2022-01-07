
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int posix_tnode ;
typedef scalar_t__ VISIT ;


 scalar_t__ leaf ;
 int n_seen ;
 scalar_t__ postorder ;

__attribute__((used)) static void
treewalk(const posix_tnode *node, VISIT v, int level)
{

 if (v == postorder || v == leaf)
  n_seen++;
}
