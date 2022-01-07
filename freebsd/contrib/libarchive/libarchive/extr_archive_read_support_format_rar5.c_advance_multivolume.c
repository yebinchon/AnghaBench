
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int endarc; } ;
struct rar5 {TYPE_1__ main; } ;
struct archive_read {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;


 struct rar5* get_context (struct archive_read*) ;
 int skip_base_block (struct archive_read*) ;

__attribute__((used)) static int advance_multivolume(struct archive_read* a) {
 int lret;
 struct rar5* rar = get_context(a);
 while(1) {
  if(rar->main.endarc == 1) {
   int looping = 1;

   rar->main.endarc = 0;

   while(looping) {
    lret = skip_base_block(a);
    switch(lret) {
     case 128:

      break;
     case 129:

      looping = 0;
      break;
     default:


      return lret;
    }
   }

   break;
  } else {




   lret = skip_base_block(a);
   if(lret == ARCHIVE_FATAL || lret == ARCHIVE_FAILED)
    return lret;






   if(lret != 128) {



    if(rar->main.endarc == 0) {
     return lret;
    } else {
     continue;
    }
   }
  }
 }

 return 129;
}
