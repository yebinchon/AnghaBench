
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_4__ {scalar_t__ repos_id; scalar_t__ repos_relpath; int local_relpath; } ;
typedef TYPE_1__ db_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (char const*,scalar_t__) ;
 int svn_relpath_basename (int ,int *) ;
 char* svn_relpath_join (scalar_t__,int ,int *) ;

__attribute__((used)) static svn_boolean_t
is_switched(db_node_t *parent,
            db_node_t *child,
            apr_pool_t *scratch_pool)
{
  if (parent && child)
    {
      if (parent->repos_id != child->repos_id)
        return TRUE;

      if (parent->repos_relpath && child->repos_relpath)
        {
          const char *unswitched
            = svn_relpath_join(parent->repos_relpath,
                               svn_relpath_basename(child->local_relpath,
                                                    scratch_pool),
                               scratch_pool);
          if (strcmp(unswitched, child->repos_relpath))
            return TRUE;
        }
    }

  return FALSE;
}
