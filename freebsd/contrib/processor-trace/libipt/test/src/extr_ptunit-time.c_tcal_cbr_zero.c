
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_config {int nom_freq; } ;
struct time_fixture {int tcal; struct pt_config config; } ;
struct ptunit_result {int dummy; } ;
struct pt_packet_cbr {scalar_t__ ratio; } ;


 int pt_tcal_update_cbr (int *,struct pt_packet_cbr*,struct pt_config*) ;
 int pte_bad_packet ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result tcal_cbr_zero(struct time_fixture *tfix)
{
 struct pt_packet_cbr packet;
 struct pt_config config;
 int errcode;

 config = tfix->config;
 config.nom_freq = 1;
 packet.ratio = 0;

 errcode = pt_tcal_update_cbr(&tfix->tcal, &packet, &config);
 ptu_int_eq(errcode, -pte_bad_packet);

 return ptu_passed();
}
