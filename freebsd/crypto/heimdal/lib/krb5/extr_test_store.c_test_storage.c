
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int krb5_context ;


 int test_int16 (int ,int *) ;
 int test_int32 (int ,int *) ;
 int test_int8 (int ,int *) ;
 int test_uint16 (int ,int *) ;
 int test_uint32 (int ,int *) ;
 int test_uint8 (int ,int *) ;

__attribute__((used)) static void
test_storage(krb5_context context, krb5_storage *sp)
{
    test_int8(context, sp);
    test_int16(context, sp);
    test_int32(context, sp);
    test_uint8(context, sp);
    test_uint16(context, sp);
    test_uint32(context, sp);
}
