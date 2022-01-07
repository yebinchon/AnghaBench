
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,...) ;
 int ftell (int *) ;
 int stderr ;

__attribute__((used)) static void
sync_error (FILE *fp, char *desc, int expect, int got)
{
  fprintf (stderr, "\n%s\n", desc);
  fprintf (stderr, "At logfile offset %ld, expected '0x%x' got '0x%x'\n",
    ftell (fp), expect, got);
  fflush (stderr);
  exit (1);
}
