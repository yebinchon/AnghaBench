
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int conn; int fs_path; } ;
typedef TYPE_1__ mergeinfo_receiver_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int send_mergeinfo_starting_tuple (TYPE_1__*,int *) ;
 char* svn_fspath__skip_ancestor (int ,char const*) ;
 int svn_mergeinfo_to_string (int **,int ,int *) ;
 int svn_ra_svn__write_tuple (int ,int *,char*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
mergeinfo_receiver(const char *path,
                   svn_mergeinfo_t mergeinfo,
                   void *baton,
                   apr_pool_t *scratch_pool)
{
  mergeinfo_receiver_baton_t *b = baton;
  svn_string_t *mergeinfo_string;




  SVN_ERR(send_mergeinfo_starting_tuple(b, scratch_pool));


  path = svn_fspath__skip_ancestor(b->fs_path, path);
  SVN_ERR(svn_mergeinfo_to_string(&mergeinfo_string, mergeinfo,
                                  scratch_pool));
  SVN_ERR(svn_ra_svn__write_tuple(b->conn, scratch_pool, "cs", path,
                                  mergeinfo_string));

  return SVN_NO_ERROR;
}
