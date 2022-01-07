
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {int length; unsigned long* data; } ;
typedef TYPE_1__ ASN1_BIT_STRING ;


 int ASN1_BIT_STRING_free (TYPE_1__*) ;
 int NID_key_usage ;
 TYPE_1__* X509_get_ext_d2i (int *,int ,int *,int *) ;

__attribute__((used)) static unsigned long
get_usage_of_ex(X509* cert)
{
 unsigned long val = 0;
 ASN1_BIT_STRING* s;
 if((s=X509_get_ext_d2i(cert, NID_key_usage, ((void*)0), ((void*)0)))) {
  if(s->length > 0) {
   val = s->data[0];
   if(s->length > 1)
    val |= s->data[1] << 8;
  }
  ASN1_BIT_STRING_free(s);
 }
 return val;
}
