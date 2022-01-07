
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_event {int dummy; } ;


 struct pt_event* pt_evq_standalone (int *) ;
 int ptu_null (struct pt_event*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result standalone_null(void)
{
 struct pt_event *ev;

 ev = pt_evq_standalone(((void*)0));
 ptu_null(ev);

 return ptu_passed();
}
