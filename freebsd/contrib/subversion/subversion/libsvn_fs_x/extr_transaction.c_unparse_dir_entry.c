
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_4__ {int number; int change_set; } ;
struct TYPE_5__ {TYPE_1__ id; int kind; int name; } ;
typedef TYPE_2__ svn_fs_x__dirent_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_byte_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN__MAX_ENCODED_UINT_LEN ;
 int * apr_palloc (int *,int) ;
 int memcpy (int *,int ,int) ;
 int strlen (int ) ;
 int * svn__encode_int (int *,int ) ;
 int * svn__encode_uint (int *,int ) ;
 int svn_stream_write (int *,char const*,int*) ;

__attribute__((used)) static svn_error_t *
unparse_dir_entry(svn_fs_x__dirent_t *dirent,
                  svn_stream_t *stream,
                  apr_pool_t *scratch_pool)
{
  apr_size_t to_write;
  apr_size_t name_len = strlen(dirent->name);






  apr_byte_t *buffer = apr_palloc(scratch_pool,
                                  name_len + 2 + 2 * SVN__MAX_ENCODED_UINT_LEN);


  apr_byte_t *p = buffer;


  memcpy(p, dirent->name, name_len + 1);
  p += name_len + 1;


  p = svn__encode_uint(p, dirent->kind);


  p = svn__encode_int(p, dirent->id.change_set);
  p = svn__encode_uint(p, dirent->id.number);


  to_write = p - buffer;
  SVN_ERR(svn_stream_write(stream, (const char *)buffer, &to_write));

  return SVN_NO_ERROR;
}
