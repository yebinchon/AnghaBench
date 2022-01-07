
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcd (int,int) ;

__attribute__((used)) static void
permute_args(int panonopt_start, int panonopt_end, int opt_end,
 char * const *nargv)
{
 int cstart, cyclelen, i, j, ncycle, nnonopts, nopts, pos;
 char *swap;




 nnonopts = panonopt_end - panonopt_start;
 nopts = opt_end - panonopt_end;
 ncycle = gcd(nnonopts, nopts);
 cyclelen = (opt_end - panonopt_start) / ncycle;

 for (i = 0; i < ncycle; i++) {
  cstart = panonopt_end+i;
  pos = cstart;
  for (j = 0; j < cyclelen; j++) {
   if (pos >= panonopt_end)
    pos -= nnonopts;
   else
    pos += nopts;
   swap = nargv[pos];

   ((char **) nargv)[pos] = nargv[cstart];

   ((char **)nargv)[cstart] = swap;
  }
 }
}
