
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; scalar_t__* data; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_8__ {scalar_t__* data; } ;
typedef TYPE_2__ svn_membuf_t ;
typedef int svn_error_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;
typedef unsigned char apr_int32_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* apr_palloc (int *,int) ;
 int svn_membuf__create (TYPE_2__*,int,int *) ;
 int svn_utf__encode_ucs4_string (TYPE_2__*,unsigned char*,int,size_t*) ;

__attribute__((used)) static svn_error_t *
latin1_to_utf8(const svn_string_t **result, const svn_string_t *src,
               apr_pool_t *result_pool)
{
  apr_int32_t *ucs4buf;
  svn_membuf_t resultbuf;
  apr_size_t length;
  apr_size_t i;
  svn_string_t *res;

  ucs4buf = apr_palloc(result_pool, src->len * sizeof(*ucs4buf));
  for (i = 0; i < src->len; ++i)
    ucs4buf[i] = (unsigned char)(src->data[i]);

  svn_membuf__create(&resultbuf, 2 * src->len, result_pool);
  SVN_ERR(svn_utf__encode_ucs4_string(
              &resultbuf, ucs4buf, src->len, &length));

  res = apr_palloc(result_pool, sizeof(*res));
  res->data = resultbuf.data;
  res->len = length;
  *result = res;
  return SVN_NO_ERROR;
}
