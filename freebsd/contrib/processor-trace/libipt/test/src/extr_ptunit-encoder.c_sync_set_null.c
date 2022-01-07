
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;


 int pt_enc_sync_set (int *,unsigned long long) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result sync_set_null(void)
{
 int errcode;

 errcode = pt_enc_sync_set(((void*)0), 0ull);
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
