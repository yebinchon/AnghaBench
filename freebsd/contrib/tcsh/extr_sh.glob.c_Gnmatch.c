
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int GLOBSPACE ;
 char* Strend (char const*) ;
 char* Strsave (char const*) ;
 int blk_indirect_cleanup ;
 int cleanup_push (char***,int ) ;
 int cleanup_until (char***) ;
 int expbrace (char***,int *,int) ;
 int t_pmatch (char const*,char*,char const**,int) ;
 void* xmalloc (int) ;

int
Gnmatch(const Char *string, const Char *pattern, const Char **endstr)
{
    Char ***fblk, **p;
    const Char *tstring = string;
    int gpol = 1, gres = 0;

    if (*pattern == '^') {
 gpol = 0;
 pattern++;
    }

    fblk = xmalloc(sizeof(Char ***));
    *fblk = xmalloc(GLOBSPACE * sizeof(Char *));
    (*fblk)[0] = Strsave(pattern);
    (*fblk)[1] = ((void*)0);

    cleanup_push(fblk, blk_indirect_cleanup);
    expbrace(fblk, ((void*)0), GLOBSPACE);

    if (endstr == ((void*)0))

 for (p = *fblk; *p; p++)
     gres |= t_pmatch(string, *p, &tstring, 1) == 2 ? 1 : 0;
    else {
 const Char *end;


        end = Strend(string);
 for (p = *fblk; *p; p++)
     if (t_pmatch(string, *p, &tstring, 1) != 0) {
  gres |= 1;
  if (end > tstring)
      end = tstring;
     }
 *endstr = end;
    }

    cleanup_until(fblk);
    return(gres == gpol);
}
