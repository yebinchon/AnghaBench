
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
typedef int krb5_storage ;
typedef int krb5_error_code ;
struct TYPE_4__ {size_t length; int data; } ;
typedef TYPE_1__ krb5_data ;


 int CHECK (int ) ;
 int INSIST (int) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int krb5_data_alloc (TYPE_1__*,scalar_t__) ;
 scalar_t__ krb5_storage_read (int *,int ,size_t) ;
 scalar_t__ krb5_storage_seek (int *,int ,int ) ;

__attribute__((used)) static krb5_error_code
copyheader(krb5_storage *sp, krb5_data *data)
{
    off_t off;
    ssize_t sret;

    off = krb5_storage_seek(sp, 0, SEEK_CUR);

    CHECK(krb5_data_alloc(data, off));
    INSIST((size_t)off == data->length);
    krb5_storage_seek(sp, 0, SEEK_SET);
    sret = krb5_storage_read(sp, data->data, data->length);
    INSIST(sret == off);
    INSIST(off == krb5_storage_seek(sp, 0, SEEK_CUR));

    return 0;
}
