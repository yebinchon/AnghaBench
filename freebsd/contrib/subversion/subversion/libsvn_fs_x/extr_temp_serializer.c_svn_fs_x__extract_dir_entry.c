
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int out_of_date; scalar_t__ txn_filesize; int hint; int name; } ;
typedef TYPE_1__ svn_fs_x__ede_baton_t ;
struct TYPE_11__ {int name; } ;
typedef TYPE_2__ svn_fs_x__dirent_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_12__ {scalar_t__ txn_filesize; int count; int lengths; int entries; } ;
typedef TYPE_3__ dir_data_t ;
typedef size_t apr_uint32_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 TYPE_2__* apr_pmemdup (int *,TYPE_2__ const*,size_t) ;
 size_t find_entry (TYPE_2__**,int ,int,scalar_t__*) ;
 scalar_t__ found_entry (TYPE_2__ const* const*,int ,int) ;
 void* svn_temp_deserializer__ptr (TYPE_2__ const* const*,void const* const*) ;
 int svn_temp_deserializer__resolve (TYPE_2__*,void**) ;

svn_error_t *
svn_fs_x__extract_dir_entry(void **out,
                            const void *data,
                            apr_size_t data_len,
                            void *baton,
                            apr_pool_t *pool)
{
  const dir_data_t *dir_data = data;
  svn_fs_x__ede_baton_t *b = baton;
  svn_boolean_t found;
  apr_size_t pos;


  const svn_fs_x__dirent_t * const *entries =
    svn_temp_deserializer__ptr(data, (const void *const *)&dir_data->entries);


  const apr_uint32_t *lengths =
    svn_temp_deserializer__ptr(data, (const void *const *)&dir_data->lengths);



  b->out_of_date = dir_data->txn_filesize != b->txn_filesize;



  *out = ((void*)0);
  if (dir_data->count == 0)
    return SVN_NO_ERROR;



  if ( b->hint < dir_data->count - 1
      && found_entry(entries, b->name, b->hint + 1))
    {

      pos = b->hint + 1;
      found = TRUE;
    }
  else
    {

      pos = find_entry((svn_fs_x__dirent_t **)entries, b->name,
                       dir_data->count, &found);
    }


  if (found)
    b->hint = pos;



  if (found && !b->out_of_date)
    {
      const svn_fs_x__dirent_t *source =
          svn_temp_deserializer__ptr(entries, (const void *const *)&entries[pos]);






      apr_size_t size = lengths[pos];


      svn_fs_x__dirent_t *new_entry = apr_pmemdup(pool, source, size);

      svn_temp_deserializer__resolve(new_entry, (void **)&new_entry->name);
      *(svn_fs_x__dirent_t **)out = new_entry;
    }

  return SVN_NO_ERROR;
}
