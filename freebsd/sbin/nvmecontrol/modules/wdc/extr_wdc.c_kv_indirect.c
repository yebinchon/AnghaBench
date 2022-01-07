
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct subpage_print {scalar_t__ key; int (* fn ) (void*,scalar_t__,int ,scalar_t__) ;} ;


 int printf (char*,scalar_t__) ;
 int stub1 (void*,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void
kv_indirect(void *buf, uint32_t subtype, uint8_t res, uint32_t size, struct subpage_print *sp, size_t nsp)
{
 size_t i;

 for (i = 0; i < nsp; i++, sp++) {
  if (sp->key == subtype) {
   sp->fn(buf, subtype, res, size);
   return;
  }
 }
 printf("No handler for page type %x\n", subtype);
}
