
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_string; } ;
typedef TYPE_1__ txdelta_baton_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int * SVN_NO_ERROR ;
 int svn_stringbuf_appendbytes (int ,char const*,int ) ;

__attribute__((used)) static svn_error_t *
write_to_string(void *baton, const char *data, apr_size_t *len)
{
  txdelta_baton_t *tb = (txdelta_baton_t *) baton;
  svn_stringbuf_appendbytes(tb->target_string, data, *len);
  return SVN_NO_ERROR;
}
