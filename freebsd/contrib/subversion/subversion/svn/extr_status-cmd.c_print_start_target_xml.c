
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 int stdout ;
 int * svn_cl__error_checked_fputs (int ,int ) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;
 int svn_xml_make_open_tag (TYPE_1__**,int *,int ,char*,char*,char const*,int ) ;
 int svn_xml_normal ;

__attribute__((used)) static svn_error_t *
print_start_target_xml(const char *target, apr_pool_t *pool)
{
  svn_stringbuf_t *sb = svn_stringbuf_create_empty(pool);

  svn_xml_make_open_tag(&sb, pool, svn_xml_normal, "target",
                        "path", target, SVN_VA_NULL);

  return svn_cl__error_checked_fputs(sb->data, stdout);
}
