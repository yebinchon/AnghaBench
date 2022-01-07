
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int ptrdiff_t ;


 int ASN1_INTEGER ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASN1_INVALID_LENGTH ;
 int * SVN_NO_ERROR ;
 int asn1_get_tag (unsigned char const**,unsigned char const*,int*,int ) ;
 int * svn_error_create (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
asn1_get_int(const unsigned char **p, const unsigned char *end, int *val)
{
  ptrdiff_t len;

  SVN_ERR(asn1_get_tag(p, end, &len, ASN1_INTEGER));



  if (len > (int)sizeof(int) || (**p & 0x80) != 0)
    return svn_error_create(SVN_ERR_ASN1_INVALID_LENGTH, ((void*)0), ((void*)0));

  *val = 0;

  while (len-- > 0) {

    *val = (*val << 8) | **p;
    (*p)++;
  }

  return SVN_NO_ERROR;
}
