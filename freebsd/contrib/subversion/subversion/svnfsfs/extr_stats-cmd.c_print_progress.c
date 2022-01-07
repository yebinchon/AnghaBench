
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int apr_pool_t ;


 int fflush (int ) ;
 int printf (char*,int ) ;
 int stdout ;

__attribute__((used)) static void
print_progress(svn_revnum_t revision,
               void *baton,
               apr_pool_t *pool)
{
  printf("%8ld", revision);
  fflush(stdout);
}
