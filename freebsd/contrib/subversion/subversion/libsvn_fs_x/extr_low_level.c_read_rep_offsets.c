
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_fs_x__representation_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_psprintf (int *,int ,int ) ;
 int * svn_error_quick_wrap (int *,char const*) ;
 TYPE_1__* svn_fs_x__id_unparse (int const*,int *) ;
 int * svn_fs_x__parse_representation (int **,int ,int *,int *) ;
 int svn_stringbuf_create_wrap (char*,int *) ;

__attribute__((used)) static svn_error_t *
read_rep_offsets(svn_fs_x__representation_t **rep_p,
                 char *string,
                 const svn_fs_x__id_t *noderev_id,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_error_t *err
    = svn_fs_x__parse_representation(rep_p,
                                     svn_stringbuf_create_wrap(string,
                                                               scratch_pool),
                                     result_pool,
                                     scratch_pool);
  if (err)
    {
      const svn_string_t *id_unparsed;
      const char *where;

      id_unparsed = svn_fs_x__id_unparse(noderev_id, scratch_pool);
      where = apr_psprintf(scratch_pool,
                           _("While reading representation offsets "
                             "for node-revision '%s':"),
                           id_unparsed->data);

      return svn_error_quick_wrap(err, where);
    }

  return SVN_NO_ERROR;
}
