
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef void* u_int32_t ;
typedef int trail_t ;
typedef int svn_fs_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {char* data; int flags; scalar_t__ size; void* ulen; void* dlen; void* doff; } ;
typedef TYPE_1__ DBT ;
typedef int DBC ;


 int * BDB_WRAP (int *,int ,int) ;
 int DB_CURRENT ;
 int DB_DBT_PARTIAL ;
 int DB_DBT_USERMEM ;
 int DB_NOTFOUND ;
 int N_ (char*) ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int get_next_length (scalar_t__*,int *,TYPE_1__*) ;
 int * locate_key (scalar_t__*,int **,TYPE_1__*,int *,int *,int *) ;
 int svn_bdb_dbc_close (int *) ;
 int svn_bdb_dbc_get (int *,TYPE_1__*,TYPE_1__*,int ) ;
 int svn_fs_base__clear_dbt (TYPE_1__*) ;
 int svn_fs_base__str_to_dbt (TYPE_1__*,char const*) ;

svn_error_t *
svn_fs_bdb__string_read(svn_fs_t *fs,
                        const char *key,
                        char *buf,
                        svn_filesize_t offset,
                        apr_size_t *len,
                        trail_t *trail,
                        apr_pool_t *pool)
{
  int db_err;
  DBT query, result;
  DBC *cursor;
  apr_size_t length, bytes_read = 0;

  svn_fs_base__str_to_dbt(&query, key);

  SVN_ERR(locate_key(&length, &cursor, &query, fs, trail, pool));




  while (length <= offset)
    {
      offset -= length;



      db_err = get_next_length(&length, cursor, &query);


      if (db_err == DB_NOTFOUND)
        {
          *len = 0;
          return SVN_NO_ERROR;
        }
      if (db_err)
        return BDB_WRAP(fs, N_("reading string"), db_err);
    }





  while (1)
    {
      svn_fs_base__clear_dbt(&result);
      result.data = buf + bytes_read;
      result.ulen = (u_int32_t)(*len - bytes_read);
      result.doff = (u_int32_t)offset;
      result.dlen = result.ulen;
      result.flags |= (DB_DBT_USERMEM | DB_DBT_PARTIAL);
      db_err = svn_bdb_dbc_get(cursor, &query, &result, DB_CURRENT);
      if (db_err)
        {
          svn_bdb_dbc_close(cursor);
          return BDB_WRAP(fs, N_("reading string"), db_err);
        }

      bytes_read += result.size;
      if (bytes_read == *len)
        {

          SVN_ERR(BDB_WRAP(fs, N_("closing string-reading cursor"),
                           svn_bdb_dbc_close(cursor)));
          break;
        }



      db_err = get_next_length(&length, cursor, &query);
      if (db_err == DB_NOTFOUND)
        break;
      if (db_err)
        return BDB_WRAP(fs, N_("reading string"), db_err);


      offset = 0;
    }

  *len = bytes_read;
  return SVN_NO_ERROR;
}
