
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filters; } ;
struct rar5 {TYPE_1__ cstate; } ;
typedef size_t ssize_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ CDE_OK ;
 scalar_t__ cdeque_init (int *,int) ;
 int memset (struct rar5*,int ,int) ;
 int* rar5_signature ;
 size_t rar5_signature_size ;

__attribute__((used)) static int rar5_init(struct rar5* rar) {
 ssize_t i;

 memset(rar, 0, sizeof(struct rar5));




 if(rar5_signature[0] == 243) {
  for(i = 0; i < rar5_signature_size; i++) {
   rar5_signature[i] ^= 0xA1;
  }
 }

 if(CDE_OK != cdeque_init(&rar->cstate.filters, 8192))
  return ARCHIVE_FATAL;

 return ARCHIVE_OK;
}
