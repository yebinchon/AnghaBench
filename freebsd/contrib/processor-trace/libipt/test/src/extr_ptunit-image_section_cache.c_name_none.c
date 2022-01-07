
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct iscache_fixture {int iscache; } ;


 int pt_iscache_init (int *,int *) ;
 char* pt_iscache_name (int *) ;
 int ptu_null (char const*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result name_none(struct iscache_fixture *cfix)
{
 const char *name;

 pt_iscache_init(&cfix->iscache, ((void*)0));

 name = pt_iscache_name(&cfix->iscache);
 ptu_null(name);

 return ptu_passed();
}
