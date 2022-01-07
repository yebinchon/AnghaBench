
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int begin; int end; } ;
struct sync_fixture {TYPE_1__ config; } ;
struct ptunit_result {int dummy; } ;


 int pt_sync_forward (int const**,int ,TYPE_1__*) ;
 int pte_eos ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result sync_fwd_empty(struct sync_fixture *sfix)
{
 const uint8_t *sync;
 int errcode;

 sfix->config.end = sfix->config.begin;

 errcode = pt_sync_forward(&sync, sfix->config.begin, &sfix->config);
 ptu_int_eq(errcode, -pte_eos);

 return ptu_passed();
}
