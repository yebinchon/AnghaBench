
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct evq_fixture {int evq; } ;


 int pt_evq_init (int *) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result efix_init(struct evq_fixture *efix)
{
 pt_evq_init(&efix->evq);

 return ptu_passed();
}
