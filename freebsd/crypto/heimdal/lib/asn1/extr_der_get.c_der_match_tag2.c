
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Der_type ;
typedef scalar_t__ Der_class ;


 int ASN1_BAD_ID ;
 int ASN1_MISPLACED_FIELD ;
 int ASN1_MISSING_FIELD ;
 int der_get_tag (unsigned char const*,size_t,scalar_t__*,int *,unsigned int*,size_t*) ;

int
der_match_tag2 (const unsigned char *p, size_t len,
  Der_class class, Der_type *type,
  unsigned int tag, size_t *size)
{
    size_t l;
    Der_class thisclass;
    unsigned int thistag;
    int e;

    e = der_get_tag (p, len, &thisclass, type, &thistag, &l);
    if (e) return e;
    if (class != thisclass)
 return ASN1_BAD_ID;
    if(tag > thistag)
 return ASN1_MISPLACED_FIELD;
    if(tag < thistag)
 return ASN1_MISSING_FIELD;
    if(size) *size = l;
    return 0;
}
