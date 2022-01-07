
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_suite {int dummy; } ;


 int asid ;
 int asid_null ;
 int begin ;
 int end ;
 int map ;
 int offset ;
 int ptu_run (struct ptunit_suite,int ) ;
 struct ptunit_suite ptunit_mk_suite (int,char**) ;
 int ptunit_report (struct ptunit_suite*) ;
 int section ;
 int section_null ;
 int size ;
 int unmap ;

int main(int argc, char **argv)
{
 struct ptunit_suite suite;

 suite = ptunit_mk_suite(argc, argv);

 ptu_run(suite, begin);
 ptu_run(suite, end);
 ptu_run(suite, offset);
 ptu_run(suite, size);
 ptu_run(suite, asid);
 ptu_run(suite, asid_null);
 ptu_run(suite, map);
 ptu_run(suite, unmap);
 ptu_run(suite, section);
 ptu_run(suite, section_null);

 return ptunit_report(&suite);
}
