
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct la_zstream {int (* end ) (struct archive*,struct la_zstream*) ;int * props; scalar_t__ prop_size; scalar_t__ valid; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int free (int *) ;
 int stub1 (struct archive*,struct la_zstream*) ;

__attribute__((used)) static int
compression_end(struct archive *a, struct la_zstream *lastrm)
{
 if (lastrm->valid) {
  lastrm->prop_size = 0;
  free(lastrm->props);
  lastrm->props = ((void*)0);
  return (lastrm->end(a, lastrm));
 }
 return (ARCHIVE_OK);
}
