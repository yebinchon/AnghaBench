
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int ptrdiff_t ;


 int SVN_ERR_ASN1_INVALID_LENGTH ;
 int SVN_ERR_ASN1_OUT_OF_DATA ;
 int * SVN_NO_ERROR ;
 int * svn_error_create (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
asn1_get_len(const unsigned char **p, const unsigned char *end,
             ptrdiff_t *len)
{
  if ((end - *p) < 1)
    return svn_error_create(SVN_ERR_ASN1_OUT_OF_DATA, ((void*)0), ((void*)0));

  if ((**p & 0x80) == 0)
    *len = *(*p)++;
  else
    switch (**p & 0x7F)
      {
      case 1:
        if ((end - *p) < 2)
          return svn_error_create(SVN_ERR_ASN1_OUT_OF_DATA, ((void*)0), ((void*)0));

        *len = (*p)[1];
        (*p) += 2;
        break;

      case 2:
        if ((end - *p) < 3)
          return svn_error_create(SVN_ERR_ASN1_OUT_OF_DATA, ((void*)0), ((void*)0));

        *len = ((*p)[1] << 8) | (*p)[2];
        (*p) += 3;
        break;

      default:
        return svn_error_create(SVN_ERR_ASN1_INVALID_LENGTH, ((void*)0), ((void*)0));
        break;
      }

  if (*len > (end - *p))
    return svn_error_create(SVN_ERR_ASN1_OUT_OF_DATA, ((void*)0), ((void*)0));

  return SVN_NO_ERROR;
}
