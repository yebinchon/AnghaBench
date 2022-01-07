
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 int ARCHIVE_RETRY ;
 int do_uncompress_file (struct archive_read*) ;

__attribute__((used)) static int uncompress_file(struct archive_read* a) {
 int ret;

 while(1) {



  ret = do_uncompress_file(a);
  if(ret != ARCHIVE_RETRY)
   return ret;
 }
}
