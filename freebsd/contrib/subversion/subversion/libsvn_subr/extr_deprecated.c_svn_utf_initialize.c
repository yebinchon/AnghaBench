
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int FALSE ;
 int svn_utf_initialize2 (int ,int *) ;

void
svn_utf_initialize(apr_pool_t *pool)
{
  svn_utf_initialize2(FALSE, pool);
}
