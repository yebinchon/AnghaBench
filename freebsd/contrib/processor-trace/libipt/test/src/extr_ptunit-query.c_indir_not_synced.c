
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;


 int pt_dfix_bad_ip ;
 int pt_qry_indirect_branch (struct pt_query_decoder*,int *) ;
 int pte_nosync ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int ) ;

__attribute__((used)) static struct ptunit_result indir_not_synced(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 uint64_t ip = pt_dfix_bad_ip, addr = ip;
 int errcode;

 errcode = pt_qry_indirect_branch(decoder, &addr);
 ptu_int_eq(errcode, -pte_nosync);
 ptu_uint_eq(addr, ip);

 return ptu_passed();
}
