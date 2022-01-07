
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_membuf_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_UTF__UNKNOWN_LENGTH ;
 int decompose_normalized (int *,char const*,int ,TYPE_1__*) ;
 int ucs4cmp (int ,int ,int ,int ) ;

svn_error_t *
svn_utf__normcmp(int *result,
                 const char *str1, apr_size_t len1,
                 const char *str2, apr_size_t len2,
                 svn_membuf_t *buf1, svn_membuf_t *buf2)
{
  apr_size_t buflen1;
  apr_size_t buflen2;


  const svn_boolean_t empty1 =
    (0 == len1 || (len1 == SVN_UTF__UNKNOWN_LENGTH && !*str1));
  const svn_boolean_t empty2 =
    (0 == len2 || (len2 == SVN_UTF__UNKNOWN_LENGTH && !*str2));
  if (empty1 || empty2)
    {
      *result = (empty1 == empty2 ? 0 : (empty1 ? -1 : 1));
      return SVN_NO_ERROR;
    }

  SVN_ERR(decompose_normalized(&buflen1, str1, len1, buf1));
  SVN_ERR(decompose_normalized(&buflen2, str2, len2, buf2));
  *result = ucs4cmp(buf1->data, buflen1, buf2->data, buflen2);
  return SVN_NO_ERROR;
}
