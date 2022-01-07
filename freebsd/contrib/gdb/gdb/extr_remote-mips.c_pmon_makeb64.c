
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * encoding ;
 int fprintf_unfiltered (int ,char*,int,...) ;
 int gdb_stderr ;

__attribute__((used)) static int
pmon_makeb64 (unsigned long v, char *p, int n, int *chksum)
{
  int count = (n / 6);

  if ((n % 12) != 0)
    {
      fprintf_unfiltered (gdb_stderr,
     "Fast encoding bitcount must be a multiple of 12bits: %dbit%s\n", n, (n == 1) ? "" : "s");
      return (0);
    }
  if (n > 36)
    {
      fprintf_unfiltered (gdb_stderr,
     "Fast encoding cannot process more than 36bits at the moment: %dbits\n", n);
      return (0);
    }


  if (chksum != ((void*)0))
    {
      switch (n)
 {
 case 36:
   *chksum += ((v >> 24) & 0xFFF);
 case 24:
   *chksum += ((v >> 12) & 0xFFF);
 case 12:
   *chksum += ((v >> 0) & 0xFFF);
 }
    }

  do
    {
      n -= 6;
      *p++ = encoding[(v >> n) & 0x3F];
    }
  while (n > 0);

  return (count);
}
