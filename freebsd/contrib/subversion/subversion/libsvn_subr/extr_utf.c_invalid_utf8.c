
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 int APR_EINVAL ;
 int SVN_VA_NULL ;
 int _ (char*) ;
 int apr_psprintf (int *,char*,unsigned char) ;
 char* apr_pstrcat (int *,char const*,int ,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;
 char* svn_utf__last_valid (char const*,size_t) ;

__attribute__((used)) static svn_error_t *
invalid_utf8(const char *data, apr_size_t len, apr_pool_t *pool)
{
  const char *last = svn_utf__last_valid(data, len);
  const char *valid_txt = "", *invalid_txt = "";
  apr_size_t i;
  size_t valid, invalid;



  valid = last - data;
  if (valid > 24)
    valid = 24;
  for (i = 0; i < valid; ++i)
    valid_txt = apr_pstrcat(pool, valid_txt,
                            apr_psprintf(pool, " %02x",
                                         (unsigned char)last[i-valid]),
                                         SVN_VA_NULL);


  invalid = data + len - last;
  if (invalid > 4)
    invalid = 4;
  for (i = 0; i < invalid; ++i)
    invalid_txt = apr_pstrcat(pool, invalid_txt,
                              apr_psprintf(pool, " %02x",
                                           (unsigned char)last[i]),
                                           SVN_VA_NULL);

  return svn_error_createf(APR_EINVAL, ((void*)0),
                           _("Valid UTF-8 data\n(hex:%s)\n"
                             "followed by invalid UTF-8 sequence\n(hex:%s)"),
                           valid_txt, invalid_txt);
}
