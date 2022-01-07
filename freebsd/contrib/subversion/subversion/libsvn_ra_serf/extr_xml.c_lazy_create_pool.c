
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * state_pool; } ;
typedef TYPE_1__ svn_ra_serf__xml_estate_t ;
typedef int apr_pool_t ;


 int ensure_pool (TYPE_1__*) ;

__attribute__((used)) static apr_pool_t *
lazy_create_pool(void *baton)
{
  svn_ra_serf__xml_estate_t *xes = baton;

  ensure_pool(xes);
  return xes->state_pool;
}
