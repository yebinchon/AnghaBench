
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int krb5_storage ;
typedef int krb5_error_code ;
typedef int krb5_data ;
struct TYPE_7__ {int length; int data; } ;
struct TYPE_6__ {scalar_t__ addr_type; TYPE_2__ address; } ;
typedef TYPE_1__ krb5_address ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ KRB5_ADDRESS_IPPORT ;
 int KRB5_STORAGE_BYTEORDER_LE ;
 int SEEK_CUR ;
 int _krb5_get_int (int ,unsigned long*,int) ;
 int krb5_print_address (TYPE_1__*,char*,size_t,size_t*) ;
 int krb5_ret_address (int *,TYPE_1__*) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_data (int *) ;
 int krb5_storage_seek (int *,int,int ) ;
 int krb5_storage_set_byteorder (int *,int ) ;
 scalar_t__ rk_UNCONST (TYPE_2__*) ;
 int snprintf (char*,size_t,char*,int) ;
 size_t strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int
addrport_print_addr (const krb5_address *addr, char *str, size_t len)
{
    krb5_error_code ret;
    krb5_address addr1, addr2;
    uint16_t port = 0;
    size_t ret_len = 0, l, size = 0;
    krb5_storage *sp;

    sp = krb5_storage_from_data((krb5_data*)rk_UNCONST(&addr->address));
    if (sp == ((void*)0))
        return ENOMEM;


    krb5_storage_set_byteorder(sp, KRB5_STORAGE_BYTEORDER_LE);

    krb5_storage_seek(sp, 2, SEEK_CUR);
    krb5_ret_address(sp, &addr1);

    krb5_storage_seek(sp, 2, SEEK_CUR);
    krb5_ret_address(sp, &addr2);
    krb5_storage_free(sp);
    if(addr2.addr_type == KRB5_ADDRESS_IPPORT && addr2.address.length == 2) {
 unsigned long value;
 _krb5_get_int(addr2.address.data, &value, 2);
 port = value;
    }
    l = strlcpy(str, "ADDRPORT:", len);
    ret_len += l;
    if (len > l)
 size += l;
    else
 size = len;

    ret = krb5_print_address(&addr1, str + size, len - size, &l);
    if (ret)
 return ret;
    ret_len += l;
    if (len - size > l)
 size += l;
    else
 size = len;

    ret = snprintf(str + size, len - size, ",PORT=%u", port);
    if (ret < 0)
 return EINVAL;
    ret_len += ret;
    return ret_len;
}
