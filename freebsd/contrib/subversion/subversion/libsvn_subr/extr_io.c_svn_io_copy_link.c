
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_io_create_unique_link (char const**,char const*,int ,char*,int *) ;
 int * svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_io_read_link (TYPE_1__**,char const*,int *) ;

svn_error_t *
svn_io_copy_link(const char *src,
                 const char *dst,
                 apr_pool_t *pool)

{
  return svn_error_create(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                          _("Symbolic links are not supported on this "
                            "platform"));

}
