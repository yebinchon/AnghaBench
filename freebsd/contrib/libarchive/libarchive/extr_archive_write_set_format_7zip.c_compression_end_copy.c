
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct la_zstream {scalar_t__ valid; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;

__attribute__((used)) static int
compression_end_copy(struct archive *a, struct la_zstream *lastrm)
{
 (void)a;
 lastrm->valid = 0;
 return (ARCHIVE_OK);
}
