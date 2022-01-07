
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mansearch {scalar_t__ argmode; char const* sec; int * arch; scalar_t__ firstmatch; } ;
struct manpaths {size_t sz; } ;
struct manpage {int dummy; } ;
typedef int sections ;


 scalar_t__ ARG_NAME ;
 int OSENUM ;
 scalar_t__ arch_valid (int *,int ) ;
 int assert (int) ;
 int fs_lookup (struct manpaths const*,size_t,char const* const,int *,char*,struct manpage**,size_t*) ;
 int * strchr (char*,char) ;
 int warnx (char*,char*,...) ;

__attribute__((used)) static int
fs_search(const struct mansearch *cfg, const struct manpaths *paths,
 int argc, char **argv, struct manpage **res, size_t *ressz)
{
 const char *const sections[] =
     {"1", "8", "6", "2", "3", "5", "7", "4", "9", "3p"};
 const size_t nsec = sizeof(sections)/sizeof(sections[0]);

 size_t ipath, isec, lastsz;

 assert(cfg->argmode == ARG_NAME);

 if (res != ((void*)0))
  *res = ((void*)0);
 *ressz = lastsz = 0;
 while (argc) {
  for (ipath = 0; ipath < paths->sz; ipath++) {
   if (cfg->sec != ((void*)0)) {
    if (fs_lookup(paths, ipath, cfg->sec,
        cfg->arch, *argv, res, ressz) != -1 &&
        cfg->firstmatch)
     return 0;
   } else for (isec = 0; isec < nsec; isec++)
    if (fs_lookup(paths, ipath, sections[isec],
        cfg->arch, *argv, res, ressz) != -1 &&
        cfg->firstmatch)
     return 0;
  }
  if (res != ((void*)0) && *ressz == lastsz &&
      strchr(*argv, '/') == ((void*)0)) {
   if (cfg->arch != ((void*)0) &&
       arch_valid(cfg->arch, OSENUM) == 0)
    warnx("Unknown architecture \"%s\".",
        cfg->arch);
   else if (cfg->sec == ((void*)0))
    warnx("No entry for %s in the manual.",
        *argv);
   else
    warnx("No entry for %s in section %s "
        "of the manual.", *argv, cfg->sec);
  }
  lastsz = *ressz;
  argv++;
  argc--;
 }
 return -1;
}
