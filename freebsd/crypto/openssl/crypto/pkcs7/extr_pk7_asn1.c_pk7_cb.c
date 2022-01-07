
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ndef_bio; int out; int boundary; } ;
typedef int PKCS7 ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_STREAM_ARG ;
typedef int ASN1_ITEM ;






 int PKCS7_dataFinal (int *,int ) ;
 int PKCS7_dataInit (int *,int ) ;
 int PKCS7_stream (int *,int *) ;

__attribute__((used)) static int pk7_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                  void *exarg)
{
    ASN1_STREAM_ARG *sarg = exarg;
    PKCS7 **pp7 = (PKCS7 **)pval;

    switch (operation) {

    case 128:
        if (PKCS7_stream(&sarg->boundary, *pp7) <= 0)
            return 0;

    case 130:
        sarg->ndef_bio = PKCS7_dataInit(*pp7, sarg->out);
        if (!sarg->ndef_bio)
            return 0;
        break;

    case 129:
    case 131:
        if (PKCS7_dataFinal(*pp7, sarg->ndef_bio) <= 0)
            return 0;
        break;

    }
    return 1;
}
