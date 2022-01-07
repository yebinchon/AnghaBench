
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;


 int addr_filter_0 ;
 int addr_filter_1_3 ;
 int addr_filter_ip_in ;
 int addr_filter_ip_in_stop_in ;
 int addr_filter_ip_out ;
 int addr_filter_ip_out_stop_in ;
 int addr_filter_none ;
 int addr_filter_oob ;
 int addr_filter_size ;
 int addr_filter_stop_in ;
 int addr_filter_stop_out ;
 int cpu_errata_bad_cpuid ;
 int cpu_errata_bad_vendor ;
 int cpu_errata_null ;
 int cpu_errata_unknown ;
 int from_user ;
 int from_user_bad_buffer ;
 int from_user_big ;
 int from_user_null ;
 int from_user_small ;
 int from_user_too_small ;
 int ptu_run (struct ptunit_suite,int ) ;
 int ptu_run_p (struct ptunit_suite,int ,int) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int size ;

int main(int argc, char **argv)
{
 struct ptunit_suite suite;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, from_user_null);
 ptu_run(suite, from_user_too_small);
 ptu_run(suite, from_user_bad_buffer);
 ptu_run(suite, from_user);
 ptu_run(suite, from_user_small);
 ptu_run(suite, from_user_big);
 ptu_run(suite, size);

 ptu_run(suite, addr_filter_size);
 ptu_run(suite, addr_filter_none);
 ptu_run(suite, addr_filter_0);
 ptu_run(suite, addr_filter_1_3);
 ptu_run_p(suite, addr_filter_oob, 255);
 ptu_run_p(suite, addr_filter_oob, 8);

 ptu_run(suite, addr_filter_ip_in);
 ptu_run(suite, addr_filter_ip_out);
 ptu_run(suite, addr_filter_stop_in);
 ptu_run(suite, addr_filter_stop_out);
 ptu_run(suite, addr_filter_ip_out_stop_in);
 ptu_run(suite, addr_filter_ip_in_stop_in);

 ptu_run(suite, cpu_errata_null);
 ptu_run(suite, cpu_errata_unknown);
 ptu_run(suite, cpu_errata_bad_vendor);
 ptu_run(suite, cpu_errata_bad_cpuid);

 return ptunit_report(&suite);
}
