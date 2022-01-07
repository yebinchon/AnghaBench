
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_error_t ;
struct context {TYPE_1__* editor; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* change_file_prop ) (void*,char const*,int const*,int *) ;} ;


 int * stub1 (void*,char const*,int const*,int *) ;

__attribute__((used)) static svn_error_t *
change_file_prop(struct context *c,
                 void *object,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  return c->editor->change_file_prop(object, name, value, pool);
}
