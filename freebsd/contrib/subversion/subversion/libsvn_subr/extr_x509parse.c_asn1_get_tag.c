
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int ptrdiff_t ;


 int SVN_ERR_ASN1_OUT_OF_DATA ;
 int SVN_ERR_ASN1_UNEXPECTED_TAG ;
 int asn1_get_len (unsigned char const**,unsigned char const*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
asn1_get_tag(const unsigned char **p,
             const unsigned char *end, ptrdiff_t *len, int tag)
{
  if ((end - *p) < 1)
    return svn_error_create(SVN_ERR_ASN1_OUT_OF_DATA, ((void*)0), ((void*)0));

  if (**p != tag)
    return svn_error_create(SVN_ERR_ASN1_UNEXPECTED_TAG, ((void*)0), ((void*)0));

  (*p)++;

  return svn_error_trace(asn1_get_len(p, end, len));
}
