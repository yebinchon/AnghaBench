
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_config {int dummy; } ;


 struct pt_config* pt_insn_get_config (int *) ;
 int ptu_null (struct pt_config const*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result get_config_null(void)
{
 const struct pt_config *config;

 config = pt_insn_get_config(((void*)0));
 ptu_null(config);

 return ptu_passed();
}
