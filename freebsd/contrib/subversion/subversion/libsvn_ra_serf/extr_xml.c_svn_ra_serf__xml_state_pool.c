
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * state_pool; } ;
typedef TYPE_1__ svn_ra_serf__xml_estate_t ;
typedef int apr_pool_t ;


 int ensure_pool (TYPE_1__*) ;

apr_pool_t *
svn_ra_serf__xml_state_pool(svn_ra_serf__xml_estate_t *xes)
{

  ensure_pool(xes);

  return xes->state_pool;
}
