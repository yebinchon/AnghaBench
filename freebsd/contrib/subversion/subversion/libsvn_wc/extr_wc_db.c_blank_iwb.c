
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; int changed_rev; } ;
typedef TYPE_1__ insert_working_baton_t ;


 int SVN_INVALID_REVNUM ;
 int memset (TYPE_1__*,int ,int) ;
 int svn_depth_infinity ;

__attribute__((used)) static void
blank_iwb(insert_working_baton_t *piwb)
{
  memset(piwb, 0, sizeof(*piwb));
  piwb->changed_rev = SVN_INVALID_REVNUM;
  piwb->depth = svn_depth_infinity;



}
