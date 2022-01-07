
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int repos_id; int depth; void* changed_rev; void* revision; } ;
typedef TYPE_1__ insert_base_baton_t ;


 int INVALID_REPOS_ID ;
 void* SVN_INVALID_REVNUM ;
 int memset (TYPE_1__*,int ,int) ;
 int svn_depth_infinity ;

__attribute__((used)) static void
blank_ibb(insert_base_baton_t *pibb)
{
  memset(pibb, 0, sizeof(*pibb));
  pibb->revision = SVN_INVALID_REVNUM;
  pibb->changed_rev = SVN_INVALID_REVNUM;
  pibb->depth = svn_depth_infinity;
  pibb->repos_id = INVALID_REPOS_ID;
}
