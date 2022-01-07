
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinit {int data; int (* func ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void
sysinit_run(const void **ppdata)
{
 const struct sysinit *psys;

 while ((psys = *ppdata) != ((void*)0)) {
  (psys->func) (psys->data);
  ppdata++;
 }
}
