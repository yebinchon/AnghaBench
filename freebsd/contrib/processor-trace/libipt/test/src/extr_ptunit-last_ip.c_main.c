
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;


 int init ;
 int init_null ;
 int ptu_run (struct ptunit_suite,int ) ;
 int ptu_run_p (struct ptunit_suite,int ,int) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int query ;
 int query_initial ;
 int query_noip ;
 int query_null ;
 int query_suppressed ;
 int status ;
 int status_initial ;
 int status_noip ;
 int status_null ;
 int status_suppressed ;
 int update_ip_bad_packet ;
 int update_ip_null_ip ;
 int update_ip_null_packet ;
 int update_ip_sext48 ;
 int update_ip_suppressed ;
 int update_ip_upd16 ;
 int update_ip_upd32 ;

int main(int argc, char **argv)
{
 struct ptunit_suite suite;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, init);
 ptu_run(suite, init_null);
 ptu_run(suite, status_initial);
 ptu_run(suite, status);
 ptu_run(suite, status_null);
 ptu_run(suite, status_noip);
 ptu_run(suite, status_suppressed);
 ptu_run(suite, query_initial);
 ptu_run(suite, query);
 ptu_run(suite, query_null);
 ptu_run(suite, query_noip);
 ptu_run(suite, query_suppressed);
 ptu_run_p(suite, update_ip_suppressed, 0);
 ptu_run_p(suite, update_ip_suppressed, 1);
 ptu_run_p(suite, update_ip_upd16, 0);
 ptu_run_p(suite, update_ip_upd16, 1);
 ptu_run_p(suite, update_ip_upd32, 0);
 ptu_run_p(suite, update_ip_upd32, 1);
 ptu_run_p(suite, update_ip_sext48, 0);
 ptu_run_p(suite, update_ip_sext48, 1);
 ptu_run_p(suite, update_ip_bad_packet, 0);
 ptu_run_p(suite, update_ip_bad_packet, 1);
 ptu_run(suite, update_ip_null_ip);
 ptu_run_p(suite, update_ip_null_packet, 0);
 ptu_run_p(suite, update_ip_null_packet, 1);

 return ptunit_report(&suite);
}
