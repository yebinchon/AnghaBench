
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct edit_baton {char* empty_file; int pool; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_io_open_unique_file3 (int *,char**,int *,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
get_empty_file(struct edit_baton *eb,
               const char **empty_file_path)
{



  if (!eb->empty_file)
    SVN_ERR(svn_io_open_unique_file3(((void*)0), &(eb->empty_file), ((void*)0),
                                     svn_io_file_del_on_pool_cleanup,
                                     eb->pool, eb->pool));

  *empty_file_path = eb->empty_file;

  return SVN_NO_ERROR;
}
