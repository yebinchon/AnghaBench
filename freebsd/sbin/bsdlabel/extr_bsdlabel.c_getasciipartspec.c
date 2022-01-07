
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;
struct partition {size_t p_size; size_t p_offset; int p_fstype; size_t p_fsize; size_t p_frag; size_t p_cpg; } ;
struct disklabel {struct partition* d_partitions; } ;


 size_t FSMAXTYPES ;



 int NXTNUM (size_t) ;
 int NXTWORD (char,size_t) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,int,...) ;
 char const** fstypenames ;
 scalar_t__ isdigit (char) ;
 char* part_offset_type ;
 char* part_size_type ;
 int stderr ;
 int strcmp (char const*,char*) ;
 size_t strtoul (char*,char**,int) ;
 char* word (char*) ;

__attribute__((used)) static int
getasciipartspec(char *tp, struct disklabel *lp, int part, int lineno)
{
 struct partition *pp;
 char *cp, *endp;
 const char **cpp;
 u_long v;

 pp = &lp->d_partitions[part];
 cp = ((void*)0);

 v = 0;
 NXTWORD(part_size_type[part],v);
 if (v == 0 && part_size_type[part] != '*') {
  fprintf(stderr,
      "line %d: %s: bad partition size\n", lineno, cp);
  return (1);
 }
 pp->p_size = v;

 v = 0;
 NXTWORD(part_offset_type[part],v);
 if (v == 0 && part_offset_type[part] != '*' &&
     part_offset_type[part] != '\0') {
  fprintf(stderr,
      "line %d: %s: bad partition offset\n", lineno, cp);
  return (1);
 }
 pp->p_offset = v;
 if (tp == ((void*)0)) {
  fprintf(stderr, "line %d: missing file system type\n", lineno);
  return (1);
 }
 cp = tp, tp = word(cp);
 for (cpp = fstypenames; cpp < &fstypenames[FSMAXTYPES]; cpp++)
  if (*cpp && !strcmp(*cpp, cp))
   break;
 if (*cpp != ((void*)0)) {
  pp->p_fstype = cpp - fstypenames;
 } else {
  if (isdigit(*cp)) {
   errno = 0;
   v = strtoul(cp, &endp, 10);
   if (errno != 0 || *endp != '\0')
    v = FSMAXTYPES;
  } else
   v = FSMAXTYPES;
  if (v >= FSMAXTYPES) {
   fprintf(stderr,
       "line %d: Warning, unknown file system type %s\n",
       lineno, cp);
   v = 128;
  }
  pp->p_fstype = v;
 }

 switch (pp->p_fstype) {
 case 128:
 case 130:
 case 129:

  if (tp) {
   NXTNUM(pp->p_fsize);
   if (pp->p_fsize == 0)
    break;
   NXTNUM(v);
   pp->p_frag = v / pp->p_fsize;
   if (tp != ((void*)0))
    NXTNUM(pp->p_cpg);
  }

  break;
 default:
  break;
 }
 return (0);
}
