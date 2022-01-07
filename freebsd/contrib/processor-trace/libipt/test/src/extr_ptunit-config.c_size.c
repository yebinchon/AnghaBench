
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_errata {int dummy; } ;


 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result size(void)
{
 ptu_uint_eq(sizeof(struct pt_errata), 16 * 4);

 return ptu_passed();
}
