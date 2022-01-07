
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct dir_baton_t {int pool; int local_abspath; TYPE_1__* eb; scalar_t__ local_info; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_2__ {int db; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__db_read_children_info (scalar_t__*,int **,int ,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
ensure_local_info(struct dir_baton_t *db,
                  apr_pool_t *scratch_pool)
{
  apr_hash_t *conflicts;

  if (db->local_info)
    return SVN_NO_ERROR;

  SVN_ERR(svn_wc__db_read_children_info(&db->local_info, &conflicts,
                                        db->eb->db, db->local_abspath,
                                        FALSE ,
                                        db->pool, scratch_pool));

  return SVN_NO_ERROR;
}
