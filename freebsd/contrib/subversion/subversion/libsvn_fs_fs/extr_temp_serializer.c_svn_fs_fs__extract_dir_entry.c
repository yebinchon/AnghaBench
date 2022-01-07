
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_fs_id_t ;
struct TYPE_10__ {int id; int name; } ;
typedef TYPE_1__ svn_fs_dirent_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_11__ {int out_of_date; scalar_t__ txn_filesize; int name; } ;
typedef TYPE_2__ extract_dir_entry_baton_t ;
struct TYPE_12__ {scalar_t__ txn_filesize; int count; int lengths; int entries; } ;
typedef TYPE_3__ dir_data_t ;
typedef size_t apr_uint32_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pmemdup (int *,TYPE_1__ const*,size_t) ;
 size_t find_entry (TYPE_1__**,int ,int ,scalar_t__*) ;
 int svn_fs_fs__id_deserialize (TYPE_1__*,int **) ;
 void* svn_temp_deserializer__ptr (TYPE_1__ const* const*,void const* const*) ;
 int svn_temp_deserializer__resolve (TYPE_1__*,void**) ;

svn_error_t *
svn_fs_fs__extract_dir_entry(void **out,
                             const void *data,
                             apr_size_t data_len,
                             void *baton,
                             apr_pool_t *pool)
{
  const dir_data_t *dir_data = data;
  extract_dir_entry_baton_t *entry_baton = baton;
  svn_boolean_t found;


  const svn_fs_dirent_t * const *entries =
    svn_temp_deserializer__ptr(data, (const void *const *)&dir_data->entries);


  const apr_uint32_t *lengths =
    svn_temp_deserializer__ptr(data, (const void *const *)&dir_data->lengths);


  apr_size_t pos = find_entry((svn_fs_dirent_t **)entries,
                              entry_baton->name,
                              dir_data->count,
                              &found);



  entry_baton->out_of_date
    = dir_data->txn_filesize != entry_baton->txn_filesize;

  *out = ((void*)0);
  if (found && !entry_baton->out_of_date)
    {
      const svn_fs_dirent_t *source =
          svn_temp_deserializer__ptr(entries, (const void *const *)&entries[pos]);






      apr_size_t size = lengths[pos];


      svn_fs_dirent_t *new_entry = apr_pmemdup(pool, source, size);

      svn_temp_deserializer__resolve(new_entry, (void **)&new_entry->name);
      svn_fs_fs__id_deserialize(new_entry, (svn_fs_id_t **)&new_entry->id);
      *(svn_fs_dirent_t **)out = new_entry;
    }

  return SVN_NO_ERROR;
}
