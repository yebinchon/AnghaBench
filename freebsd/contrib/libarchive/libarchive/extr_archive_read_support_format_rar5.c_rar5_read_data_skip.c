
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bytes_remaining; } ;
struct TYPE_3__ {scalar_t__ solid; } ;
struct rar5 {TYPE_2__ file; int skip_mode; TYPE_1__ main; } ;
struct archive_read {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 scalar_t__ consume (struct archive_read*,scalar_t__) ;
 struct rar5* get_context (struct archive_read*) ;
 int rar5_read_data (struct archive_read*,int *,int *,int *) ;

__attribute__((used)) static int rar5_read_data_skip(struct archive_read *a) {
 struct rar5* rar = get_context(a);

 if(rar->main.solid) {





  int ret;


  while(rar->file.bytes_remaining > 0) {
   rar->skip_mode++;



   ret = rar5_read_data(a, ((void*)0), ((void*)0), ((void*)0));


   rar->skip_mode--;

   if(ret < 0 || ret == ARCHIVE_EOF) {


    return ret;
   }
  }
 } else {




  if(ARCHIVE_OK != consume(a, rar->file.bytes_remaining)) {
   return ARCHIVE_FATAL;
  }

  rar->file.bytes_remaining = 0;
 }

 return ARCHIVE_OK;
}
