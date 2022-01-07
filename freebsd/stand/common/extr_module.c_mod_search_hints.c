
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct moduledir {int d_hintsz; int d_path; int * d_hints; } ;
struct mod_depend {int md_ver_preferred; int md_ver_minimum; int md_ver_maximum; } ;


 int INT_ALIGN (int *,int *) ;

 int bcmp (int *,char const*,int) ;
 char* file_lookup (int ,char const*,int,int *) ;
 int * kld_ext_list ;
 int moduledir_readhints (struct moduledir*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
mod_search_hints(struct moduledir *mdp, const char *modname,
 struct mod_depend *verinfo)
{
 u_char *cp, *recptr, *bufend, *best;
 char *result;
 int *intp, bestver, blen, clen, found, ival, modnamelen, reclen;

 moduledir_readhints(mdp);
 modnamelen = strlen(modname);
 found = 0;
 result = ((void*)0);
 bestver = 0;
 if (mdp->d_hints == ((void*)0))
  goto bad;
 recptr = mdp->d_hints;
 bufend = recptr + mdp->d_hintsz;
 clen = blen = 0;
 best = cp = ((void*)0);
 while (recptr < bufend && !found) {
  intp = (int*)recptr;
  reclen = *intp++;
  ival = *intp++;
  cp = (u_char*)intp;
  switch (ival) {
  case 128:
   clen = *cp++;
   if (clen != modnamelen || bcmp(cp, modname, clen) != 0)
    break;
   cp += clen;
   INT_ALIGN(mdp->d_hints, cp);
   ival = *(int*)cp;
   cp += sizeof(int);
   clen = *cp++;
   if (verinfo == ((void*)0) || ival == verinfo->md_ver_preferred) {
    found = 1;
    break;
   }
   if (ival >= verinfo->md_ver_minimum &&
     ival <= verinfo->md_ver_maximum &&
     ival > bestver) {
    bestver = ival;
    best = cp;
    blen = clen;
   }
   break;
  default:
   break;
  }
  recptr += reclen + sizeof(int);
 }



 if (found)
  result = file_lookup(mdp->d_path, (const char *)cp, clen, ((void*)0));
 else if (best)
  result = file_lookup(mdp->d_path, (const char *)best, blen, ((void*)0));
bad:




 if (!found && !bestver && result == ((void*)0))
  result = file_lookup(mdp->d_path, modname, modnamelen, kld_ext_list);
 return result;
}
