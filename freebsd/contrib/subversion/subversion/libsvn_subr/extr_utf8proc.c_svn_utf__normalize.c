
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ svn_membuf_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int normalize_cstring (int *,char const*,int ,int ,int ,TYPE_1__*) ;

svn_error_t*
svn_utf__normalize(const char **result,
                   const char *str, apr_size_t len,
                   svn_membuf_t *buf)
{
  apr_size_t result_length;
  SVN_ERR(normalize_cstring(&result_length, str, len, FALSE, FALSE, buf));
  *result = (const char*)(buf->data);
  return SVN_NO_ERROR;
}
