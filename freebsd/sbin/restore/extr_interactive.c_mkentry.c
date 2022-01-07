
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int e_flags; } ;
struct direct {int d_type; int d_ino; int d_name; } ;
struct afile {char* fname; int len; char prefix; char postfix; int fnum; } ;
 int NEW ;
 int NODE ;
 scalar_t__ TSTINO (int ,int ) ;
 scalar_t__ dflag ;
 int dumpmap ;
 int fprintf (int ,char*,int) ;
 int inodetype (int ) ;
 int isprint (unsigned char) ;
 struct entry* lookupname (char*) ;
 char* savename (int ) ;
 int stderr ;
 int vflag ;

__attribute__((used)) static void
mkentry(char *name, struct direct *dp, struct afile *fp)
{
 char *cp;
 struct entry *np;

 fp->fnum = dp->d_ino;
 fp->fname = savename(dp->d_name);
 for (cp = fp->fname; *cp; cp++)
  if (!vflag && !isprint((unsigned char)*cp))
   *cp = '?';
 fp->len = cp - fp->fname;
 if (dflag && TSTINO(fp->fnum, dumpmap) == 0)
  fp->prefix = '^';
 else if ((np = lookupname(name)) != ((void*)0) && (np->e_flags & NEW))
  fp->prefix = '*';
 else
  fp->prefix = ' ';
 switch(dp->d_type) {

 default:
  fprintf(stderr, "Warning: undefined file type %d\n",
      dp->d_type);

 case 131:
  fp->postfix = ' ';
  break;

 case 132:
  fp->postfix = '@';
  break;

 case 133:
 case 130:
  fp->postfix = '=';
  break;

 case 135:
 case 136:
  fp->postfix = '#';
  break;

 case 128:
  fp->postfix = '%';
  break;

 case 129:
 case 134:
  if (inodetype(dp->d_ino) == NODE)
   fp->postfix = '/';
  else
   fp->postfix = ' ';
  break;
 }
 return;
}
