
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
typedef void iscache_fixture ;


 int num_threads ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,int *,int (*) (void*),void*) ;
 int ptunit_thrd_create ;

__attribute__((used)) static struct ptunit_result stress(struct iscache_fixture *cfix,
       int (*worker)(void *))
{
 int errcode;
 errcode = worker(cfix);
 ptu_int_eq(errcode, 0);

 return ptu_passed();
}
