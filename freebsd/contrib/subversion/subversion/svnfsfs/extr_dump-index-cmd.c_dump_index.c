
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int check_cancel ;
 int dump_index_entry ;
 int open_fs (int **,char const*,int *) ;
 int printf (char*) ;
 int svn_fs_fs__dump_index (int *,int ,int ,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
dump_index(const char *path,
           svn_revnum_t revision,
           apr_pool_t *pool)
{
  svn_fs_t *fs;


  SVN_ERR(open_fs(&fs, path, pool));


  printf("       Start       Length Type   Revision     Item Checksum\n");


  SVN_ERR(svn_fs_fs__dump_index(fs, revision, dump_index_entry, ((void*)0),
                                check_cancel, ((void*)0), pool));

  return SVN_NO_ERROR;
}
