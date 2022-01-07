
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int ptrdiff_t ;
typedef int apr_time_t ;
struct TYPE_12__ {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; scalar_t__ tm_usec; int tm_wday; int tm_yday; int member_0; } ;
typedef TYPE_2__ apr_time_exp_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;




 scalar_t__ SVN_ERR_ASN1_UNEXPECTED_TAG ;
 int SVN_ERR_X509_CERT_INVALID_DATE ;
 TYPE_1__* SVN_NO_ERROR ;
 char* apr_pstrndup (int *,char const*,int ) ;
 scalar_t__ apr_time_exp_gmt_get (int *,TYPE_2__*) ;
 TYPE_1__* asn1_get_tag (unsigned char const**,unsigned char const*,int *,int) ;
 int sscanf (char*,char*,int*,int*,int*,int*,int*,int*,char*) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_create (int ,TYPE_1__*,int *) ;
 TYPE_1__* svn_error_wrap_apr (scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
x509_get_date(apr_time_t *when,
              const unsigned char **p,
              const unsigned char *end,
              apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  apr_status_t ret;
  int tag;
  ptrdiff_t len;
  char *date;
  apr_time_exp_t xt = { 0 };
  char tz;

  err = asn1_get_tag(p, end, &len, 128);
  if (err && err->apr_err == SVN_ERR_ASN1_UNEXPECTED_TAG)
    {
      svn_error_clear(err);
      err = asn1_get_tag(p, end, &len, 129);
      tag = 129;
    }
  else
    {
      tag = 128;
    }
  if (err)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_DATE, err, ((void*)0));

  date = apr_pstrndup(scratch_pool, (const char *) *p, len);
  switch (tag)
    {
    case 128:
      if (sscanf(date, "%2d%2d%2d%2d%2d%2d%c",
                 &xt.tm_year, &xt.tm_mon, &xt.tm_mday,
                 &xt.tm_hour, &xt.tm_min, &xt.tm_sec, &tz) < 6)
        return svn_error_create(SVN_ERR_X509_CERT_INVALID_DATE, ((void*)0), ((void*)0));






      xt.tm_year += 100 * (xt.tm_year < 50);
      break;

    case 129:
      if (sscanf(date, "%4d%2d%2d%2d%2d%2d%c",
                 &xt.tm_year, &xt.tm_mon, &xt.tm_mday,
                 &xt.tm_hour, &xt.tm_min, &xt.tm_sec, &tz) < 6)
        return svn_error_create(SVN_ERR_X509_CERT_INVALID_DATE, ((void*)0), ((void*)0));



      xt.tm_year -= 1900;
      break;

    default:


      return svn_error_create(SVN_ERR_X509_CERT_INVALID_DATE, ((void*)0), ((void*)0));
      break;
    }





  if (tz != 'Z')
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_DATE, ((void*)0), ((void*)0));


  xt.tm_mon -= 1;


  if (xt.tm_usec < 0 ||
      xt.tm_sec < 0 || xt.tm_sec > 61 ||
      xt.tm_min < 0 || xt.tm_min > 59 ||
      xt.tm_hour < 0 || xt.tm_hour > 23 ||
      xt.tm_mday < 1 || xt.tm_mday > 31 ||
      xt.tm_mon < 0 || xt.tm_mon > 11 ||
      xt.tm_year < 0 ||
      xt.tm_wday < 0 || xt.tm_wday > 6 ||
      xt.tm_yday < 0 || xt.tm_yday > 365)
    return svn_error_create(SVN_ERR_X509_CERT_INVALID_DATE, ((void*)0), ((void*)0));

  ret = apr_time_exp_gmt_get(when, &xt);
  if (ret)
    return svn_error_wrap_apr(ret, ((void*)0));

  *p += len;

  return SVN_NO_ERROR;
}
