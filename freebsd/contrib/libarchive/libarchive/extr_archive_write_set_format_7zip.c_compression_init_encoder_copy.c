
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct la_zstream {int valid; int end; int code; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int compression_code_copy ;
 int compression_end (struct archive*,struct la_zstream*) ;
 int compression_end_copy ;

__attribute__((used)) static int
compression_init_encoder_copy(struct archive *a, struct la_zstream *lastrm)
{

 if (lastrm->valid)
  compression_end(a, lastrm);
 lastrm->valid = 1;
 lastrm->code = compression_code_copy;
 lastrm->end = compression_end_copy;
 return (ARCHIVE_OK);
}
