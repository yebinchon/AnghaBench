
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int stdout ;
 int * svn_cl__error_checked_fputs (int ,int ) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;
 int svn_xml_make_close_tag (TYPE_1__**,int *,char const*) ;

svn_error_t *
svn_cl__xml_print_footer(const char *tagname,
                         apr_pool_t *pool)
{
  svn_stringbuf_t *sb = svn_stringbuf_create_empty(pool);


  svn_xml_make_close_tag(&sb, pool, tagname);
  return svn_cl__error_checked_fputs(sb->data, stdout);
}
