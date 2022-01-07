
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entry {int e_flags; int e_ino; } ;
struct TYPE_2__ {void* gl_stat; void* gl_lstat; int gl_closedir; int gl_readdir; int gl_opendir; int gl_flags; } ;
struct arglist {scalar_t__ freeglob; TYPE_1__ glob; scalar_t__ argcnt; } ;
typedef int name ;
typedef int ino_t ;
typedef int curdir ;


 int BUFSIZ ;
 int FORCE ;
 int GLOB_ALTDIRFUNC ;
 int LEAF ;
 int MAXPATHLEN ;
 int NEW ;
 int addfile ;
 int canon (char*,char*,int) ;
 int checkrestore () ;
 int createfiles () ;
 int createlinks () ;
 int deletefile ;
 int dflag ;
 int dirlookup (char*) ;
 int fprintf (int ,char*,...) ;
 int getcmd (char*,char*,char*,int,struct arglist*) ;
 int glob_readdir ;
 void* glob_stat ;
 int globfree (TYPE_1__*) ;
 int inodetype (int ) ;
 struct entry* lookupname (char*) ;
 int mflag ;
 int * nextarg ;
 int pathcheck (char*) ;
 int printdumpinfo () ;
 int printlist (char*,char*) ;
 int reset ;
 int rst_closedir ;
 int rst_opendir ;
 int runshell ;
 int setdirmodes (int ) ;
 scalar_t__ setjmp (int ) ;
 int stderr ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;
 int treescan (char*,int ,int ) ;
 int vflag ;
 scalar_t__ volno ;

void
runcmdshell(void)
{
 struct entry *np;
 ino_t ino;
 struct arglist arglist;
 char curdir[MAXPATHLEN];
 char name[MAXPATHLEN];
 char cmd[BUFSIZ];

 arglist.freeglob = 0;
 arglist.argcnt = 0;
 arglist.glob.gl_flags = GLOB_ALTDIRFUNC;
 arglist.glob.gl_opendir = rst_opendir;
 arglist.glob.gl_readdir = glob_readdir;
 arglist.glob.gl_closedir = rst_closedir;
 arglist.glob.gl_lstat = glob_stat;
 arglist.glob.gl_stat = glob_stat;
 canon("/", curdir, sizeof(curdir));
loop:
 if (setjmp(reset) != 0) {
  if (arglist.freeglob != 0) {
   arglist.freeglob = 0;
   arglist.argcnt = 0;
   globfree(&arglist.glob);
  }
  nextarg = ((void*)0);
  volno = 0;
 }
 runshell = 1;
 getcmd(curdir, cmd, name, sizeof(name), &arglist);
 switch (cmd[0]) {



 case 'a':
  if (strncmp(cmd, "add", strlen(cmd)) != 0)
   goto bad;
  ino = dirlookup(name);
  if (ino == 0)
   break;
  if (mflag)
   pathcheck(name);
  treescan(name, ino, addfile);
  break;



 case 'c':
  if (strncmp(cmd, "cd", strlen(cmd)) != 0)
   goto bad;
  ino = dirlookup(name);
  if (ino == 0)
   break;
  if (inodetype(ino) == LEAF) {
   fprintf(stderr, "%s: not a directory\n", name);
   break;
  }
  (void) strcpy(curdir, name);
  break;



 case 'd':
  if (strncmp(cmd, "delete", strlen(cmd)) != 0)
   goto bad;
  np = lookupname(name);
  if (np == ((void*)0) || (np->e_flags & NEW) == 0) {
   fprintf(stderr, "%s: not on extraction list\n", name);
   break;
  }
  treescan(name, np->e_ino, deletefile);
  break;



 case 'e':
  if (strncmp(cmd, "extract", strlen(cmd)) != 0)
   goto bad;
  createfiles();
  createlinks();
  setdirmodes(0);
  if (dflag)
   checkrestore();
  volno = 0;
  break;



 case 'h':
  if (strncmp(cmd, "help", strlen(cmd)) != 0)
   goto bad;
 case '?':
  fprintf(stderr, "%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
   "Available commands are:\n",
   "\tls [arg] - list directory\n",
   "\tcd arg - change directory\n",
   "\tpwd - print current directory\n",
   "\tadd [arg] - add `arg' to list of",
   " files to be extracted\n",
   "\tdelete [arg] - delete `arg' from",
   " list of files to be extracted\n",
   "\textract - extract requested files\n",
   "\tsetmodes - set modes of requested directories\n",
   "\tquit - immediately exit program\n",
   "\twhat - list dump header information\n",
   "\tverbose - toggle verbose flag",
   " (useful with ``ls'')\n",
   "\thelp or `?' - print this list\n",
   "If no `arg' is supplied, the current",
   " directory is used\n");
  break;



 case 'l':
  if (strncmp(cmd, "ls", strlen(cmd)) != 0)
   goto bad;
  printlist(name, curdir);
  break;



 case 'p':
  if (strncmp(cmd, "pwd", strlen(cmd)) != 0)
   goto bad;
  if (curdir[1] == '\0')
   fprintf(stderr, "/\n");
  else
   fprintf(stderr, "%s\n", &curdir[1]);
  break;



 case 'q':
  if (strncmp(cmd, "quit", strlen(cmd)) != 0)
   goto bad;
  return;
 case 'x':
  if (strncmp(cmd, "xit", strlen(cmd)) != 0)
   goto bad;
  return;



 case 'v':
  if (strncmp(cmd, "verbose", strlen(cmd)) != 0)
   goto bad;
  if (vflag) {
   fprintf(stderr, "verbose mode off\n");
   vflag = 0;
   break;
  }
  fprintf(stderr, "verbose mode on\n");
  vflag++;
  break;



 case 's':
  if (strncmp(cmd, "setmodes", strlen(cmd)) != 0)
   goto bad;
  setdirmodes(FORCE);
  break;



 case 'w':
  if (strncmp(cmd, "what", strlen(cmd)) != 0)
   goto bad;
  printdumpinfo();
  break;



 case 'D':
  if (strncmp(cmd, "Debug", strlen(cmd)) != 0)
   goto bad;
  if (dflag) {
   fprintf(stderr, "debugging mode off\n");
   dflag = 0;
   break;
  }
  fprintf(stderr, "debugging mode on\n");
  dflag++;
  break;



 default:
 bad:
  fprintf(stderr, "%s: unknown command; type ? for help\n", cmd);
  break;
 }
 goto loop;
}
