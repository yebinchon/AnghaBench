
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_fixture {int decoder; } ;
struct ptunit_result {int dummy; } ;
struct pt_config {int dummy; } ;


 struct pt_config* pt_blk_get_config (int *) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_config const*) ;

__attribute__((used)) static struct ptunit_result get_config(struct test_fixture *tfix)
{
 const struct pt_config *config;

 config = pt_blk_get_config(&tfix->decoder);
 ptu_ptr(config);

 return ptu_passed();
}
