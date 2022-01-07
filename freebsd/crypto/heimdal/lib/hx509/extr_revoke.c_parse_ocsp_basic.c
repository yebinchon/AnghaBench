
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int responseStatus; TYPE_2__* responseBytes; } ;
struct TYPE_6__ {size_t length; int data; } ;
struct TYPE_7__ {TYPE_1__ response; int responseType; } ;
typedef TYPE_3__ OCSPResponse ;
typedef int OCSPBasicOCSPResponse ;


 int ASN1_EXTRA_DATA ;
 int EINVAL ;
 int HX509_REVOKE_WRONG_DATA ;
 int asn1_oid_id_pkix_ocsp_basic ;
 int decode_OCSPBasicOCSPResponse (int ,size_t,int *,size_t*) ;
 int decode_OCSPResponse (void const*,size_t,TYPE_3__*,size_t*) ;
 int der_heim_oid_cmp (int *,int *) ;
 int free_OCSPBasicOCSPResponse (int *) ;
 int free_OCSPResponse (TYPE_3__*) ;
 int memset (int *,int ,int) ;


__attribute__((used)) static int
parse_ocsp_basic(const void *data, size_t length, OCSPBasicOCSPResponse *basic)
{
    OCSPResponse resp;
    size_t size;
    int ret;

    memset(basic, 0, sizeof(*basic));

    ret = decode_OCSPResponse(data, length, &resp, &size);
    if (ret)
 return ret;
    if (length != size) {
 free_OCSPResponse(&resp);
 return ASN1_EXTRA_DATA;
    }

    switch (resp.responseStatus) {
    case 128:
 break;
    default:
 free_OCSPResponse(&resp);
 return HX509_REVOKE_WRONG_DATA;
    }

    if (resp.responseBytes == ((void*)0)) {
 free_OCSPResponse(&resp);
 return EINVAL;
    }

    ret = der_heim_oid_cmp(&resp.responseBytes->responseType,
      &asn1_oid_id_pkix_ocsp_basic);
    if (ret != 0) {
 free_OCSPResponse(&resp);
 return HX509_REVOKE_WRONG_DATA;
    }

    ret = decode_OCSPBasicOCSPResponse(resp.responseBytes->response.data,
           resp.responseBytes->response.length,
           basic,
           &size);
    if (ret) {
 free_OCSPResponse(&resp);
 return ret;
    }
    if (size != resp.responseBytes->response.length) {
 free_OCSPResponse(&resp);
 free_OCSPBasicOCSPResponse(basic);
 return ASN1_EXTRA_DATA;
    }
    free_OCSPResponse(&resp);

    return 0;
}
