
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rev; int relpath; } ;
typedef TYPE_1__ svn_pathrev_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static svn_boolean_t
pathrev_equal(const svn_pathrev_t *p1,
              const svn_pathrev_t *p2)
{
  if (p1->rev != p2->rev)
    return FALSE;
  if (strcmp(p1->relpath, p2->relpath) != 0)
    return FALSE;

  return TRUE;
}
