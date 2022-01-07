
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;
struct image_fixture {void* fini; int * init; } ;


 int add_cached ;
 int add_cached_bad_isid ;
 int add_cached_null ;
 int add_cached_null_asid ;
 int add_cached_twice ;
 int adjacent ;
 int contained ;
 int contained_back ;
 int contained_multiple ;
 int copy ;
 int copy_empty ;
 int copy_merge ;
 int copy_overlap ;
 int copy_replace ;
 int copy_self ;
 int copy_shrink ;
 int copy_split ;
 void* dfix_fini ;
 int find ;
 int find_asid ;
 int find_bad_asid ;
 int find_nomem ;
 int find_null ;
 int fini ;
 int fini_empty ;
 int fini_null ;
 void* ifix_fini ;
 int * ifix_init ;
 int init ;
 int init_name ;
 int init_null ;
 int name ;
 int name_none ;
 int name_null ;
 int overlap_back ;
 int overlap_front ;
 int overlap_mid ;
 int overlap_multiple ;
 int ptu_run (struct ptunit_suite,int ) ;
 int ptu_run_f (struct ptunit_suite,int ,struct image_fixture) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int read ;
 int read_asid ;
 int read_bad_asid ;
 int read_callback ;
 int read_empty ;
 int read_error ;
 int read_nomem ;
 int read_null ;
 int read_null_asid ;
 int read_spurious_error ;
 int read_truncated ;
 int remove_all_by_filename ;
 int remove_bad_asid ;
 int remove_bad_vaddr ;
 int remove_by_asid ;
 int remove_by_filename ;
 int remove_by_filename_bad_asid ;
 int remove_none_by_filename ;
 int remove_section ;
 int * rfix_init ;
 int same ;
 int same_different_isid ;
 int same_different_offset ;
 int validate ;
 int validate_bad_asid ;
 int validate_bad_isid ;
 int validate_bad_offset ;
 int validate_bad_size ;
 int validate_bad_vaddr ;
 int validate_null ;

int main(int argc, char **argv)
{
 struct image_fixture dfix, ifix, rfix;
 struct ptunit_suite suite;


 dfix.init = ((void*)0);
 dfix.fini = dfix_fini;


 ifix.init = ifix_init;
 ifix.fini = ifix_fini;


 rfix.init = rfix_init;
 rfix.fini = ifix_fini;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, init);
 ptu_run_f(suite, init_name, dfix);
 ptu_run(suite, init_null);

 ptu_run(suite, fini);
 ptu_run(suite, fini_empty);
 ptu_run(suite, fini_null);

 ptu_run_f(suite, name, dfix);
 ptu_run(suite, name_none);
 ptu_run(suite, name_null);

 ptu_run_f(suite, read_empty, ifix);
 ptu_run_f(suite, overlap_front, ifix);
 ptu_run_f(suite, overlap_back, ifix);
 ptu_run_f(suite, overlap_multiple, ifix);
 ptu_run_f(suite, overlap_mid, ifix);
 ptu_run_f(suite, contained, ifix);
 ptu_run_f(suite, contained_multiple, ifix);
 ptu_run_f(suite, contained_back, ifix);
 ptu_run_f(suite, same, ifix);
 ptu_run_f(suite, same_different_isid, ifix);
 ptu_run_f(suite, same_different_offset, ifix);
 ptu_run_f(suite, adjacent, ifix);

 ptu_run_f(suite, read_null, rfix);
 ptu_run_f(suite, read, rfix);
 ptu_run_f(suite, read_null, rfix);
 ptu_run_f(suite, read_asid, ifix);
 ptu_run_f(suite, read_bad_asid, rfix);
 ptu_run_f(suite, read_null_asid, rfix);
 ptu_run_f(suite, read_callback, rfix);
 ptu_run_f(suite, read_nomem, rfix);
 ptu_run_f(suite, read_truncated, rfix);
 ptu_run_f(suite, read_error, rfix);
 ptu_run_f(suite, read_spurious_error, rfix);

 ptu_run_f(suite, remove_section, rfix);
 ptu_run_f(suite, remove_bad_vaddr, rfix);
 ptu_run_f(suite, remove_bad_asid, rfix);
 ptu_run_f(suite, remove_by_filename, rfix);
 ptu_run_f(suite, remove_by_filename_bad_asid, rfix);
 ptu_run_f(suite, remove_none_by_filename, rfix);
 ptu_run_f(suite, remove_all_by_filename, ifix);
 ptu_run_f(suite, remove_by_asid, rfix);

 ptu_run_f(suite, copy_empty, ifix);
 ptu_run_f(suite, copy, rfix);
 ptu_run_f(suite, copy_self, rfix);
 ptu_run_f(suite, copy_shrink, rfix);
 ptu_run_f(suite, copy_split, ifix);
 ptu_run_f(suite, copy_merge, ifix);
 ptu_run_f(suite, copy_overlap, ifix);
 ptu_run_f(suite, copy_replace, ifix);

 ptu_run(suite, add_cached_null);
 ptu_run_f(suite, add_cached, ifix);
 ptu_run_f(suite, add_cached_null_asid, ifix);
 ptu_run_f(suite, add_cached_twice, ifix);
 ptu_run_f(suite, add_cached_bad_isid, ifix);

 ptu_run_f(suite, find_null, rfix);
 ptu_run_f(suite, find, rfix);
 ptu_run_f(suite, find_asid, ifix);
 ptu_run_f(suite, find_bad_asid, rfix);
 ptu_run_f(suite, find_nomem, rfix);

 ptu_run_f(suite, validate_null, rfix);
 ptu_run_f(suite, validate, rfix);
 ptu_run_f(suite, validate_bad_asid, rfix);
 ptu_run_f(suite, validate_bad_vaddr, rfix);
 ptu_run_f(suite, validate_bad_offset, rfix);
 ptu_run_f(suite, validate_bad_size, rfix);
 ptu_run_f(suite, validate_bad_isid, rfix);

 return ptunit_report(&suite);
}
