
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int kadm5_server_context ;


 int CHECK (int ) ;
 int VERSION2 ;
 int krb5_store_uint32 (int *,int ) ;

__attribute__((used)) static void
proc_init(kadm5_server_context *contextp,
   krb5_storage *in,
   krb5_storage *out)
{
    CHECK(krb5_store_uint32(out, VERSION2));
    CHECK(krb5_store_uint32(out, 0));
    CHECK(krb5_store_uint32(out, 0));
}
