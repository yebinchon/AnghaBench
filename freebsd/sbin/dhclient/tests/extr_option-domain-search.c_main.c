
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int multiple_domains_valid () ;
 int no_option_present () ;
 int one_domain_truncated1 () ;
 int one_domain_truncated2 () ;
 int one_domain_valid () ;
 int two_domains_compressed () ;
 int two_domains_forwardptr () ;
 int two_domains_infloop () ;
 int two_domains_truncated1 () ;
 int two_domains_truncated2 () ;
 int two_domains_truncatedptr () ;
 int two_domains_valid () ;

int
main(int argc, char *argv[])
{

 no_option_present();

 one_domain_valid();
 one_domain_truncated1();
 one_domain_truncated2();

 two_domains_valid();
 two_domains_truncated1();
 two_domains_truncated2();

 two_domains_compressed();
 two_domains_infloop();
 two_domains_forwardptr();
 two_domains_truncatedptr();

 multiple_domains_valid();

 return (0);
}
