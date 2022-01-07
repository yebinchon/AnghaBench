
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * state_pool; } ;
typedef TYPE_1__ svn_ra_serf__xml_estate_t ;


 int * svn_pool_create (int ) ;
 int xes_pool (TYPE_1__*) ;

__attribute__((used)) static void
ensure_pool(svn_ra_serf__xml_estate_t *xes)
{
  if (xes->state_pool == ((void*)0))
    xes->state_pool = svn_pool_create(xes_pool(xes));
}
