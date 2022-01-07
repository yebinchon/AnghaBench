
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int inner_stream; int context; } ;
typedef TYPE_1__ fnv1a_stream_baton_t ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_checksum_update (int ,char const*,int ) ;
 int svn_stream_write (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
fnv1a_write_handler(void *baton,
                    const char *data,
                    apr_size_t *len)
{
  fnv1a_stream_baton_t *b = baton;

  SVN_ERR(svn_checksum_update(b->context, data, *len));
  SVN_ERR(svn_stream_write(b->inner_stream, data, len));

  return SVN_NO_ERROR;
}
