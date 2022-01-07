
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ntlm_targetinfo {int avflags; int dnstreename; int dnsdomainname; int dnsservername; int domainname; int servername; } ;
struct ntlm_buf {scalar_t__ length; int data; } ;
typedef int krb5_storage ;


 int CHECK (int ,int ) ;
 int ENOMEM ;
 int KRB5_STORAGE_BYTEORDER_LE ;
 int SEEK_CUR ;
 int krb5_ret_uint16 (int *,int*) ;
 int krb5_ret_uint32 (int *,int *) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_readonly_mem (int ,scalar_t__) ;
 int krb5_storage_seek (int *,int,int ) ;
 int krb5_storage_set_byteorder (int *,int ) ;
 int memset (struct ntlm_targetinfo*,int ,int) ;
 int ret_string (int *,int,int,int *) ;

int
heim_ntlm_decode_targetinfo(const struct ntlm_buf *data,
       int ucs2,
       struct ntlm_targetinfo *ti)
{
    uint16_t type, len;
    krb5_storage *in;
    int ret = 0, done = 0;

    memset(ti, 0, sizeof(*ti));

    if (data->length == 0)
 return 0;

    in = krb5_storage_from_readonly_mem(data->data, data->length);
    if (in == ((void*)0))
 return ENOMEM;
    krb5_storage_set_byteorder(in, KRB5_STORAGE_BYTEORDER_LE);

    while (!done) {
 CHECK(krb5_ret_uint16(in, &type), 0);
 CHECK(krb5_ret_uint16(in, &len), 0);

 switch (type) {
 case 0:
     done = 1;
     break;
 case 1:
     CHECK(ret_string(in, ucs2, len, &ti->servername), 0);
     break;
 case 2:
     CHECK(ret_string(in, ucs2, len, &ti->domainname), 0);
     break;
 case 3:
     CHECK(ret_string(in, ucs2, len, &ti->dnsservername), 0);
     break;
 case 4:
     CHECK(ret_string(in, ucs2, len, &ti->dnsdomainname), 0);
     break;
 case 5:
     CHECK(ret_string(in, ucs2, len, &ti->dnstreename), 0);
     break;
 case 6:
     CHECK(krb5_ret_uint32(in, &ti->avflags), 0);
     break;
 default:
     krb5_storage_seek(in, len, SEEK_CUR);
     break;
 }
    }
 out:
    if (in)
 krb5_storage_free(in);
    return ret;
}
