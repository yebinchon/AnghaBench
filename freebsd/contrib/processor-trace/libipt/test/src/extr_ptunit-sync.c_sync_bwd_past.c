
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ end; } ;
struct sync_fixture {TYPE_1__ config; } ;
struct ptunit_result {int dummy; } ;


 int pt_sync_backward (int const**,scalar_t__,TYPE_1__*) ;
 int pte_eos ;
 scalar_t__ ptps_psb ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int sfix_encode_psb (scalar_t__) ;

__attribute__((used)) static struct ptunit_result sync_bwd_past(struct sync_fixture *sfix)
{
 const uint8_t *sync;
 int errcode;

 sfix_encode_psb(sfix->config.end - ptps_psb);

 errcode = pt_sync_backward(&sync, sfix->config.end - ptps_psb,
       &sfix->config);
 ptu_int_eq(errcode, -pte_eos);

 return ptu_passed();
}
