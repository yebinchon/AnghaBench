
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int tag; unsigned char const* p; int len; } ;
typedef TYPE_1__ x509_buf ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;


 int ASN1_CONSTRUCTED ;
 int ASN1_CONTEXT_SPECIFIC ;
 scalar_t__ SVN_ERR_ASN1_UNEXPECTED_TAG ;
 TYPE_2__* SVN_NO_ERROR ;
 TYPE_2__* asn1_get_tag (unsigned char const**,unsigned char const*,int *,int) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
x509_get_uid(const unsigned char **p,
             const unsigned char *end, x509_buf * uid, int n)
{
  svn_error_t *err;

  if (*p == end)
    return SVN_NO_ERROR;

  err = asn1_get_tag(p, end, &uid->len,
                     ASN1_CONTEXT_SPECIFIC | ASN1_CONSTRUCTED | n);
  if (err)
    {
      if (err->apr_err == SVN_ERR_ASN1_UNEXPECTED_TAG)
        {
          svn_error_clear(err);
          return SVN_NO_ERROR;
        }

      return svn_error_trace(err);
    }

  uid->tag = ASN1_CONTEXT_SPECIFIC | ASN1_CONSTRUCTED | n;
  uid->p = *p;
  *p += uid->len;

  return SVN_NO_ERROR;
}
