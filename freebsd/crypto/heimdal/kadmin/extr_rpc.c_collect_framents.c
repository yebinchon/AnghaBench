
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int krb5_storage ;
typedef int krb5_error_code ;


 int CHECK (int ) ;
 size_t LAST_FRAGMENT ;
 int krb5_ret_uint32 (int *,size_t*) ;
 int read_data (int *,int *,size_t) ;

__attribute__((used)) static int
collect_framents(krb5_storage *sp, krb5_storage *msg)
{
    krb5_error_code ret;
    uint32_t len;
    int last_fragment;
    size_t total_len = 0;

    do {
 ret = krb5_ret_uint32(sp, &len);
 if (ret)
     return ret;

 last_fragment = (len & LAST_FRAGMENT);
 len &= ~LAST_FRAGMENT;

 CHECK(read_data(sp, msg, len));
 total_len += len;

    } while(!last_fragment || total_len == 0);

    return 0;
}
