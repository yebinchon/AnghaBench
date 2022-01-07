
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_utf_stringbuf_from_utf8 (TYPE_1__**,TYPE_1__ const*,int *) ;

svn_error_t *
svn_utf_cstring_from_utf8_stringbuf(const char **dest,
                                    const svn_stringbuf_t *src,
                                    apr_pool_t *pool)
{
  svn_stringbuf_t *destbuf;

  SVN_ERR(svn_utf_stringbuf_from_utf8(&destbuf, src, pool));
  *dest = destbuf->data;

  return SVN_NO_ERROR;
}
