
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disk ;
 int dumpfreespace (char const*,int) ;
 int dumpfs (char const*) ;
 int dumpfsid () ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int marshal (char const*) ;
 scalar_t__ optind ;
 int ufs_disk_close (int *) ;
 int ufs_disk_fillout (int *,char const*) ;
 int ufserr (char const*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 const char *name;
 int ch, dofreespace, domarshal, dolabel, eval;

 dofreespace = domarshal = dolabel = eval = 0;

 while ((ch = getopt(argc, argv, "lfm")) != -1) {
  switch (ch) {
  case 'f':
   dofreespace++;
   break;
  case 'm':
   domarshal = 1;
   break;
  case 'l':
   dolabel = 1;
   break;
  case '?':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc < 1)
  usage();
 if (dofreespace && domarshal)
  usage();
 if (dofreespace > 2)
  usage();

 while ((name = *argv++) != ((void*)0)) {
  if (ufs_disk_fillout(&disk, name) == -1) {
   ufserr(name);
   eval |= 1;
   continue;
  }
  if (dofreespace)
   eval |= dumpfreespace(name, dofreespace);
  else if (domarshal)
   eval |= marshal(name);
  else if (dolabel)
   eval |= dumpfsid();
  else
   eval |= dumpfs(name);
  ufs_disk_close(&disk);
 }
 exit(eval);
}
