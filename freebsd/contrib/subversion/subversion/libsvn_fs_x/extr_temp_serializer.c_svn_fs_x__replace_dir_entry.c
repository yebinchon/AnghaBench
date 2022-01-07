
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
typedef int svn_fs_x__dirent_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_4__ {int * new_entry; int name; int txn_filesize; } ;
typedef TYPE_1__ replace_baton_t ;
typedef int lengths ;
typedef int entries ;
struct TYPE_5__ {int operations; int count; scalar_t__ over_provision; int lengths; int len; int entries; int txn_filesize; } ;
typedef TYPE_2__ dir_data_t ;
typedef int * apr_uint32_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 size_t find_entry (int **,int ,int,scalar_t__*) ;
 int memmove (int **,int **,int) ;
 int return_serialized_dir_context (int *,void**,size_t*,int ) ;
 int serialize_dir_entry (int *,int **,int **) ;
 int * slowly_replace_dir_entry (void**,size_t*,void*,int *) ;
 scalar_t__ svn_temp_deserializer__ptr (char const*,void const* const*) ;
 int * svn_temp_serializer__init_append (TYPE_2__*,int **,int ,size_t,int *) ;

svn_error_t *
svn_fs_x__replace_dir_entry(void **data,
                            apr_size_t *data_len,
                            void *baton,
                            apr_pool_t *pool)
{
  replace_baton_t *replace_baton = (replace_baton_t *)baton;
  dir_data_t *dir_data = (dir_data_t *)*data;
  svn_boolean_t found;
  svn_fs_x__dirent_t **entries;
  apr_uint32_t *lengths;
  apr_uint32_t length;
  apr_size_t pos;

  svn_temp_serializer__context_t *context;





  dir_data->txn_filesize = replace_baton->txn_filesize;




  if (dir_data->operations > 2 + dir_data->count / 4)
    return slowly_replace_dir_entry(data, data_len, baton, pool);


  entries = (svn_fs_x__dirent_t **)
    svn_temp_deserializer__ptr((const char *)dir_data,
                               (const void *const *)&dir_data->entries);


  lengths = (apr_uint32_t *)
    svn_temp_deserializer__ptr((const char *)dir_data,
                               (const void *const *)&dir_data->lengths);


  pos = find_entry(entries, replace_baton->name, dir_data->count, &found);


  if (replace_baton->new_entry == ((void*)0))
    {
      if (found)
        {

          memmove(&entries[pos],
                  &entries[pos + 1],
                  sizeof(entries[pos]) * (dir_data->count - pos));
          memmove(&lengths[pos],
                  &lengths[pos + 1],
                  sizeof(lengths[pos]) * (dir_data->count - pos));

          dir_data->count--;
          dir_data->over_provision++;
          dir_data->operations++;
        }

      return SVN_NO_ERROR;
    }


  if (!found)
    {



      if (dir_data->over_provision == 0)
        return slowly_replace_dir_entry(data, data_len, baton, pool);


      memmove(&entries[pos + 1],
              &entries[pos],
              sizeof(entries[pos]) * (dir_data->count - pos));
      memmove(&lengths[pos + 1],
              &lengths[pos],
              sizeof(lengths[pos]) * (dir_data->count - pos));

      dir_data->count++;
      dir_data->over_provision--;
      dir_data->operations++;
    }


  entries[pos] = replace_baton->new_entry;
  context = svn_temp_serializer__init_append(dir_data,
                                             entries,
                                             dir_data->len,
                                             *data_len,
                                             pool);
  serialize_dir_entry(context, &entries[pos], &length);


  SVN_ERR(return_serialized_dir_context(context, data, data_len, TRUE));





  dir_data = (dir_data_t *)*data;
  lengths = (apr_uint32_t *)
    svn_temp_deserializer__ptr((const char *)dir_data,
                               (const void *const *)&dir_data->lengths);
  lengths[pos] = length;

  return SVN_NO_ERROR;
}
