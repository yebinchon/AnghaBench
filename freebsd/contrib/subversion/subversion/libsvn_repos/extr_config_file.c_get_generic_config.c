
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {int * pool; } ;
typedef TYPE_2__ config_access_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_checksum (int **,int ,int ,int ,int *) ;
 int svn_checksum_md5 ;
 int svn_config__write (int *,int *,int *) ;
 int svn_config_read3 (int **,char const*,int ,int ,int ,int *) ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int *) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static svn_error_t *
get_generic_config(svn_stream_t **stream,
                   svn_checksum_t **checksum,
                   config_access_t *access,
                   const char *path,
                   svn_boolean_t must_exist,
                   apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *contents = svn_stringbuf_create_empty(access->pool);
  svn_config_t *config;



  SVN_ERR(svn_config_read3(&config, path, must_exist, TRUE, TRUE,
                           scratch_pool));
  SVN_ERR(svn_config__write(svn_stream_from_stringbuf(contents, scratch_pool),
                            config, scratch_pool));


  SVN_ERR(svn_checksum(checksum, svn_checksum_md5,
                       contents->data, contents->len, access->pool));
  *stream = svn_stream_from_stringbuf(contents, access->pool);

  return SVN_NO_ERROR;
}
