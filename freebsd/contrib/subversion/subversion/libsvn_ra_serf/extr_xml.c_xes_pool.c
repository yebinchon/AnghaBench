
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * state_pool; struct TYPE_3__* prev; } ;
typedef TYPE_1__ svn_ra_serf__xml_estate_t ;
typedef int apr_pool_t ;



__attribute__((used)) static apr_pool_t *
xes_pool(const svn_ra_serf__xml_estate_t *xes)
{


  while (xes->state_pool == ((void*)0))
    xes = xes->prev;
  return xes->state_pool;
}
