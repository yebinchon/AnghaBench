
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int FILE ;


 int err (int,char*,int ,...) ;
 int fclose (int *) ;
 int feof (int *) ;
 int fflush (int ) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*) ;
 int fscanf (int *,char*,scalar_t__*,scalar_t__*,int*) ;
 int new_lump (scalar_t__,scalar_t__,int) ;
 int rworklist ;
 int stderr ;

__attribute__((used)) static off_t
read_worklist(off_t t)
{
 off_t s, l, d;
 int state, lines;
 FILE *file;

 (void)fprintf(stderr, "Reading worklist ...");
 fflush(stderr);
 file = fopen(rworklist, "r");
 if (file == ((void*)0))
  err(1, "Error opening file %s", rworklist);

 lines = 0;
 d = t;
 for (;;) {
  ++lines;
  if (3 != fscanf(file, "%jd %jd %d\n", &s, &l, &state)) {
   if (!feof(file))
    err(1, "Error parsing file %s at line %d",
        rworklist, lines);
   else
    break;
  }
  new_lump(s, l, state);
  d -= l;
 }
 fclose(file);
 (void)fprintf(stderr, " done.\n");




 return (d);
}
