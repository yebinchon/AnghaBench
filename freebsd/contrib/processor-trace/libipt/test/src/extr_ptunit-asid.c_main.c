
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;


 int from_user ;
 int from_user_big ;
 int from_user_cr3 ;
 int from_user_default ;
 int from_user_null ;
 int from_user_small ;
 int match ;
 int match_cr3 ;
 int match_cr3_false ;
 int match_default ;
 int match_default_mixed ;
 int match_null ;
 int match_vmcs ;
 int match_vmcs_false ;
 int ptu_run (struct ptunit_suite,int ) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int to_user ;
 int to_user_big ;
 int to_user_cr3 ;
 int to_user_null ;
 int to_user_small ;
 int to_user_too_small ;

int main(int argc, char **argv)
{
 struct ptunit_suite suite;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, from_user_null);
 ptu_run(suite, from_user_default);
 ptu_run(suite, from_user_small);
 ptu_run(suite, from_user_big);
 ptu_run(suite, from_user);
 ptu_run(suite, from_user_cr3);

 ptu_run(suite, to_user_null);
 ptu_run(suite, to_user_too_small);
 ptu_run(suite, to_user_small);
 ptu_run(suite, to_user_big);
 ptu_run(suite, to_user);
 ptu_run(suite, to_user_cr3);

 ptu_run(suite, match_null);
 ptu_run(suite, match_default);
 ptu_run(suite, match_default_mixed);
 ptu_run(suite, match_cr3);
 ptu_run(suite, match_vmcs);
 ptu_run(suite, match);
 ptu_run(suite, match_cr3_false);
 ptu_run(suite, match_vmcs_false);

 return ptunit_report(&suite);
}
