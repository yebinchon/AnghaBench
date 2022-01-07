
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct context {TYPE_1__* editor; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* delete_entry ) (char const*,int ,void*,int *) ;} ;


 int SVN_INVALID_REVNUM ;
 int * stub1 (char const*,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
delete(struct context *c,
       void *dir_baton,
       const char *edit_path,
       apr_pool_t *pool)
{
  return c->editor->delete_entry(edit_path, SVN_INVALID_REVNUM,
                                 dir_baton, pool);
}
