
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcred {int handle; int service; int seq_num; int proc; int version; } ;
typedef int krb5_storage ;
typedef int krb5_data ;


 int CHECK (int ) ;
 int INSIST (int ) ;
 int krb5_ret_uint32 (int *,int *) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_data (int *) ;
 int memset (struct gcred*,int ,int) ;
 int ret_data_xdr (int *,int *) ;

__attribute__((used)) static int
ret_gcred(krb5_data *data, struct gcred *gcred)
{
    krb5_storage *sp;

    memset(gcred, 0, sizeof(*gcred));

    sp = krb5_storage_from_data(data);
    INSIST(sp != ((void*)0));

    CHECK(krb5_ret_uint32(sp, &gcred->version));
    CHECK(krb5_ret_uint32(sp, &gcred->proc));
    CHECK(krb5_ret_uint32(sp, &gcred->seq_num));
    CHECK(krb5_ret_uint32(sp, &gcred->service));
    CHECK(ret_data_xdr(sp, &gcred->handle));

    krb5_storage_free(sp);

    return 0;
}
