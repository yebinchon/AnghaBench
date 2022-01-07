
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* recorded_revision; void* recorded_peg_revision; int repos_id; void* changed_rev; void* revision; } ;
typedef TYPE_1__ insert_external_baton_t ;


 int INVALID_REPOS_ID ;
 void* SVN_INVALID_REVNUM ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
blank_ieb(insert_external_baton_t *ieb)
{
  memset(ieb, 0, sizeof(*ieb));
  ieb->revision = SVN_INVALID_REVNUM;
  ieb->changed_rev = SVN_INVALID_REVNUM;
  ieb->repos_id = INVALID_REPOS_ID;

  ieb->recorded_peg_revision = SVN_INVALID_REVNUM;
  ieb->recorded_revision = SVN_INVALID_REVNUM;
}
