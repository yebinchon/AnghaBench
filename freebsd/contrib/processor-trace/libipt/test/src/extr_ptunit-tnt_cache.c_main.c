
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;


 int init ;
 int init_null ;
 int is_empty_initial ;
 int is_empty_no ;
 int is_empty_null ;
 int is_empty_yes ;
 int ptu_run (struct ptunit_suite,int ) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int query_empty ;
 int query_not_taken ;
 int query_null ;
 int query_taken ;
 int update_tnt ;
 int update_tnt_not_empty ;
 int update_tnt_null_packet ;
 int update_tnt_null_tnt ;

int main(int argc, char **argv)
{
 struct ptunit_suite suite;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, init);
 ptu_run(suite, init_null);
 ptu_run(suite, is_empty_initial);
 ptu_run(suite, is_empty_no);
 ptu_run(suite, is_empty_yes);
 ptu_run(suite, is_empty_null);
 ptu_run(suite, query_taken);
 ptu_run(suite, query_not_taken);
 ptu_run(suite, query_empty);
 ptu_run(suite, query_null);
 ptu_run(suite, update_tnt);
 ptu_run(suite, update_tnt_not_empty);
 ptu_run(suite, update_tnt_null_tnt);
 ptu_run(suite, update_tnt_null_packet);

 return ptunit_report(&suite);
}
