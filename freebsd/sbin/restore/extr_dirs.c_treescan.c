
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotab {long t_seekpt; } ;
struct direct {char* d_name; int d_namlen; int d_ino; } ;
typedef int locname ;
typedef int ino_t ;


 scalar_t__ FAIL ;
 int LEAF ;
 int MAXPATHLEN ;
 int NODE ;
 int dirp ;
 int fprintf (int ,char*,char*,...) ;
 struct inotab* inotablookup (int ) ;
 struct direct* rst_readdir (int ) ;
 int rst_seekdir (int ,long,long) ;
 long rst_telldir (int ) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 long stub1 (char*,int ,int) ;
 long stub2 (char*,int ,int) ;

void
treescan(char *pname, ino_t ino, long (*todo)(char *, ino_t, int))
{
 struct inotab *itp;
 struct direct *dp;
 int namelen;
 long bpt;
 char locname[MAXPATHLEN];

 itp = inotablookup(ino);
 if (itp == ((void*)0)) {



  (void) (*todo)(pname, ino, LEAF);
  return;
 }



 if ((*todo)(pname, ino, NODE) == FAIL)
  return;




 (void) strlcpy(locname, pname, sizeof(locname));
 (void) strlcat(locname, "/", sizeof(locname));
 namelen = strlen(locname);
 rst_seekdir(dirp, itp->t_seekpt, itp->t_seekpt);
 dp = rst_readdir(dirp);
 if (dp != ((void*)0) && strcmp(dp->d_name, ".") == 0)
  dp = rst_readdir(dirp);
 else
  fprintf(stderr, "Warning: `.' missing from directory %s\n",
   pname);
 if (dp != ((void*)0) && strcmp(dp->d_name, "..") == 0)
  dp = rst_readdir(dirp);
 else
  fprintf(stderr, "Warning: `..' missing from directory %s\n",
   pname);
 bpt = rst_telldir(dirp);



 while (dp != ((void*)0)) {
  locname[namelen] = '\0';
  if (namelen + dp->d_namlen >= sizeof(locname)) {
   fprintf(stderr, "%s%s: name exceeds %zu char\n",
       locname, dp->d_name, sizeof(locname) - 1);
  } else {
   (void)strlcat(locname, dp->d_name, sizeof(locname));
   treescan(locname, dp->d_ino, todo);
   rst_seekdir(dirp, bpt, itp->t_seekpt);
  }
  dp = rst_readdir(dirp);
  bpt = rst_telldir(dirp);
 }
}
