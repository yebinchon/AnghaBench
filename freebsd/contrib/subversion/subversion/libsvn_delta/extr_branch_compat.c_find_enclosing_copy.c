
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ action; scalar_t__ copyfrom_path; } ;
typedef TYPE_1__ change_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ RESTRUCTURE_NONE ;
 TYPE_1__* svn_hash_gets (int *,char const*) ;
 char* svn_relpath_dirname (char const*,int *) ;

__attribute__((used)) static const char *
find_enclosing_copy(apr_hash_t *changes,
                    const char *relpath,
                    apr_pool_t *result_pool)
{
  while (*relpath)
    {
      const change_node_t *change = svn_hash_gets(changes, relpath);

      if (change)
        {
          if (change->copyfrom_path)
            return relpath;
          if (change->action != RESTRUCTURE_NONE)
            return ((void*)0);
        }
      relpath = svn_relpath_dirname(relpath, result_pool);
    }

  return ((void*)0);
}
