
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct iscache_fixture {int iscache; } ;


 int pt_iscache_init (int *,char*) ;
 char* pt_iscache_name (int *) ;
 struct ptunit_result ptu_passed () ;
 int ptu_str_eq (char const*,char*) ;

__attribute__((used)) static struct ptunit_result name(struct iscache_fixture *cfix)
{
 const char *name;

 pt_iscache_init(&cfix->iscache, "iscache-name");

 name = pt_iscache_name(&cfix->iscache);
 ptu_str_eq(name, "iscache-name");

 return ptu_passed();
}
