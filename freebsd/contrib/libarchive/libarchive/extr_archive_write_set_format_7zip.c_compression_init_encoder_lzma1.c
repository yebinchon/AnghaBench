
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct la_zstream {scalar_t__ valid; } ;
struct archive {int dummy; } ;


 int compression_end (struct archive*,struct la_zstream*) ;
 int compression_unsupported_encoder (struct archive*,struct la_zstream*,char*) ;

__attribute__((used)) static int
compression_init_encoder_lzma1(struct archive *a,
    struct la_zstream *lastrm, int level)
{

 (void) level;
 if (lastrm->valid)
  compression_end(a, lastrm);
 return (compression_unsupported_encoder(a, lastrm, "lzma"));
}
