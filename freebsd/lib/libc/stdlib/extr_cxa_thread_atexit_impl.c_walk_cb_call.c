
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dl_phdr_info {int dummy; } ;
struct cxa_thread_dtor {int (* func ) (int ) ;int obj; int dso; } ;


 scalar_t__ __elf_phdr_match_addr (struct dl_phdr_info*,int (*) (int )) ;
 scalar_t__ _rtld_addr_phdr (int ,struct dl_phdr_info*) ;
 int fprintf (int ,char*,void*) ;
 int stderr ;
 int stub1 (int ) ;

__attribute__((used)) static void
walk_cb_call(struct cxa_thread_dtor *dtor)
{
 struct dl_phdr_info phdr_info;

 if (_rtld_addr_phdr(dtor->dso, &phdr_info) &&
     __elf_phdr_match_addr(&phdr_info, dtor->func))
  dtor->func(dtor->obj);
 else
  fprintf(stderr, "__cxa_thread_call_dtors: dtr %p from "
      "unloaded dso, skipping\n", (void *)(dtor->func));
}
