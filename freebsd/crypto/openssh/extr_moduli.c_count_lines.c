
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int QLINESIZE ;
 int SEEK_SET ;
 unsigned long ULONG_MAX ;
 int debug (char*,...) ;
 int * fgets (char*,int,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 int rewind (int *) ;

__attribute__((used)) static unsigned long
count_lines(FILE *f)
{
 unsigned long count = 0;
 char lp[QLINESIZE + 1];

 if (fseek(f, 0, SEEK_SET) != 0) {
  debug("input file is not seekable");
  return ULONG_MAX;
 }
 while (fgets(lp, QLINESIZE + 1, f) != ((void*)0))
  count++;
 rewind(f);
 debug("input file has %lu lines", count);
 return count;
}
