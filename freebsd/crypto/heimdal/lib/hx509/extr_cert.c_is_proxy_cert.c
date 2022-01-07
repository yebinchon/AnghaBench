
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hx509_context ;
struct TYPE_4__ {size_t length; int data; } ;
struct TYPE_5__ {TYPE_1__ extnValue; } ;
typedef int ProxyCertInfo ;
typedef TYPE_2__ Extension ;
typedef int Certificate ;


 int HX509_EXTENSION_NOT_FOUND ;
 int HX509_EXTRA_DATA_AFTER_STRUCTURE ;
 int asn1_oid_id_pkix_pe_proxyCertInfo ;
 int decode_ProxyCertInfo (int ,size_t,int *,size_t*) ;
 TYPE_2__* find_extension (int const*,int *,size_t*) ;
 int free_ProxyCertInfo (int *) ;
 int hx509_clear_error_string (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
is_proxy_cert(hx509_context context,
       const Certificate *cert,
       ProxyCertInfo *rinfo)
{
    ProxyCertInfo info;
    const Extension *e;
    size_t size;
    int ret;
    size_t i = 0;

    if (rinfo)
 memset(rinfo, 0, sizeof(*rinfo));

    e = find_extension(cert, &asn1_oid_id_pkix_pe_proxyCertInfo, &i);
    if (e == ((void*)0)) {
 hx509_clear_error_string(context);
 return HX509_EXTENSION_NOT_FOUND;
    }

    ret = decode_ProxyCertInfo(e->extnValue.data,
          e->extnValue.length,
          &info,
          &size);
    if (ret) {
 hx509_clear_error_string(context);
 return ret;
    }
    if (size != e->extnValue.length) {
 free_ProxyCertInfo(&info);
 hx509_clear_error_string(context);
 return HX509_EXTRA_DATA_AFTER_STRUCTURE;
    }
    if (rinfo == ((void*)0))
 free_ProxyCertInfo(&info);
    else
 *rinfo = info;

    return 0;
}
