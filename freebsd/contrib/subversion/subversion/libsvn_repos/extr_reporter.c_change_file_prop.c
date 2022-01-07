
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_error_t ;
struct TYPE_5__ {TYPE_1__* editor; } ;
typedef TYPE_2__ report_baton_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int (* change_file_prop ) (void*,char const*,int const*,int *) ;} ;


 int stub1 (void*,char const*,int const*,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
change_file_prop(report_baton_t *b, void *file_baton, const char *name,
                 const svn_string_t *value, apr_pool_t *pool)
{
  return svn_error_trace(b->editor->change_file_prop(file_baton, name, value,
                                                     pool));
}
