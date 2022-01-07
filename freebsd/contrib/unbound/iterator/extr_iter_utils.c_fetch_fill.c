
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_env {int max_dependency_depth; int * target_fetch_policy; } ;


 int fatal_exit (char*,char*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static void
fetch_fill(struct iter_env* ie, const char* str)
{
 char* s = (char*)str, *e;
 int i;
 for(i=0; i<ie->max_dependency_depth+1; i++) {
  ie->target_fetch_policy[i] = strtol(s, &e, 10);
  if(s == e)
   fatal_exit("cannot parse fetch policy number %s", s);
  s = e;
 }
}
