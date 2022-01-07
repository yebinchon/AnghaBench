
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dhgroup {int size; int p; int g; } ;
typedef int FILE ;
typedef int DH ;


 int BN_clear_free (int ) ;
 int _PATH_DH_MODULI ;
 int arc4random_uniform (int) ;
 int * dh_new_group (int ,int ) ;
 int * dh_new_group_fallback (int) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (int,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int logit (char*,int,...) ;
 int parse_prime (int,char*,struct dhgroup*) ;
 int rewind (int *) ;
 int strerror (int ) ;

DH *
choose_dh(int min, int wantbits, int max)
{
 FILE *f;
 char *line = ((void*)0);
 size_t linesize = 0;
 int best, bestcount, which, linenum;
 struct dhgroup dhg;

 if ((f = fopen(_PATH_DH_MODULI, "r")) == ((void*)0)) {
  logit("WARNING: could not open %s (%s), using fixed modulus",
      _PATH_DH_MODULI, strerror(errno));
  return (dh_new_group_fallback(max));
 }

 linenum = 0;
 best = bestcount = 0;
 while (getline(&line, &linesize, f) != -1) {
  linenum++;
  if (!parse_prime(linenum, line, &dhg))
   continue;
  BN_clear_free(dhg.g);
  BN_clear_free(dhg.p);

  if (dhg.size > max || dhg.size < min)
   continue;

  if ((dhg.size > wantbits && dhg.size < best) ||
      (dhg.size > best && best < wantbits)) {
   best = dhg.size;
   bestcount = 0;
  }
  if (dhg.size == best)
   bestcount++;
 }
 free(line);
 line = ((void*)0);
 linesize = 0;
 rewind(f);

 if (bestcount == 0) {
  fclose(f);
  logit("WARNING: no suitable primes in %s", _PATH_DH_MODULI);
  return (dh_new_group_fallback(max));
 }

 linenum = 0;
 which = arc4random_uniform(bestcount);
 while (getline(&line, &linesize, f) != -1) {
  if (!parse_prime(linenum, line, &dhg))
   continue;
  if ((dhg.size > max || dhg.size < min) ||
      dhg.size != best ||
      linenum++ != which) {
   BN_clear_free(dhg.g);
   BN_clear_free(dhg.p);
   continue;
  }
  break;
 }
 free(line);
 line = ((void*)0);
 fclose(f);
 if (linenum != which+1) {
  logit("WARNING: line %d disappeared in %s, giving up",
      which, _PATH_DH_MODULI);
  return (dh_new_group_fallback(max));
 }

 return (dh_new_group(dhg.g, dhg.p));
}
