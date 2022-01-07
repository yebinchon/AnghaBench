
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct la_zstream {int * real_stream; scalar_t__ valid; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int archive_set_error (struct archive*,int ,char*,char const*) ;

__attribute__((used)) static int
compression_unsupported_encoder(struct archive *a,
    struct la_zstream *lastrm, const char *name)
{

 archive_set_error(a, ARCHIVE_ERRNO_MISC,
     "%s compression not supported on this platform", name);
 lastrm->valid = 0;
 lastrm->real_stream = ((void*)0);
 return (ARCHIVE_FAILED);
}
