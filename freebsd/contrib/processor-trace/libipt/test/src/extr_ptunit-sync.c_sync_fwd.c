
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ begin; } ;
struct sync_fixture {TYPE_1__ config; } ;
struct ptunit_result {int dummy; } ;


 int pt_sync_forward (int const**,scalar_t__,TYPE_1__*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr_eq (int const*,scalar_t__) ;
 int sfix_encode_psb (scalar_t__) ;

__attribute__((used)) static struct ptunit_result sync_fwd(struct sync_fixture *sfix)
{
 const uint8_t *sync;
 int errcode;

 sfix_encode_psb(sfix->config.begin + 0x23);

 errcode = pt_sync_forward(&sync, sfix->config.begin, &sfix->config);
 ptu_int_eq(errcode, 0);
 ptu_ptr_eq(sync, sfix->config.begin + 0x23);

 return ptu_passed();
}
