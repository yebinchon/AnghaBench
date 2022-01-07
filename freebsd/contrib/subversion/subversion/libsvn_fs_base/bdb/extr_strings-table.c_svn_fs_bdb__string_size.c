
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trail_t ;
typedef int svn_fs_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef int DBT ;
typedef int DBC ;


 int * BDB_WRAP (int *,int ,int) ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_next_length (scalar_t__*,int *,int *) ;
 int locate_key (scalar_t__*,int **,int *,int *,int *,int *) ;
 int svn_fs_base__str_to_dbt (int *,char const*) ;

svn_error_t *
svn_fs_bdb__string_size(svn_filesize_t *size,
                        svn_fs_t *fs,
                        const char *key,
                        trail_t *trail,
                        apr_pool_t *pool)
{
  int db_err;
  DBT query;
  DBC *cursor;
  apr_size_t length;
  svn_filesize_t total;

  svn_fs_base__str_to_dbt(&query, key);

  SVN_ERR(locate_key(&length, &cursor, &query, fs, trail, pool));

  total = length;
  while (1)
    {


      db_err = get_next_length(&length, cursor, &query);


      if (db_err == DB_NOTFOUND)
        {
          *size = total;
          return SVN_NO_ERROR;
        }
      if (db_err)
        return BDB_WRAP(fs, N_("fetching string length"), db_err);

      total += length;
    }


}
