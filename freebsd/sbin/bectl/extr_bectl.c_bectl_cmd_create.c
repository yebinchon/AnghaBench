
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snapshot ;



 int BE_MAXPATHLEN ;
 int be ;
 char* be_active_path (int ) ;
 int be_create_depth (int ,char*,char*,int) ;
 int be_snapshot (int ,char*,char*,int,char*) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;
 int usage (int) ;

__attribute__((used)) static int
bectl_cmd_create(int argc, char *argv[])
{
 char snapshot[BE_MAXPATHLEN];
 char *atpos, *bootenv, *snapname;
 int err, opt;
 bool recursive;

 snapname = ((void*)0);
 recursive = 0;
 while ((opt = getopt(argc, argv, "e:r")) != -1) {
  switch (opt) {
  case 'e':
   snapname = optarg;
   break;
  case 'r':
   recursive = 1;
   break;
  default:
   fprintf(stderr, "bectl create: unknown option '-%c'\n",
       optopt);
   return (usage(0));
  }
 }

 argc -= optind;
 argv += optind;

 if (argc != 1) {
  fprintf(stderr, "bectl create: wrong number of arguments\n");
  return (usage(0));
 }

 bootenv = *argv;

 err = 128;
 if ((atpos = strchr(bootenv, '@')) != ((void*)0)) {




  *atpos++ = '\0';
  err = be_snapshot(be, bootenv, atpos, recursive, ((void*)0));
 } else {
  if (snapname == ((void*)0))

   err = be_snapshot(be, be_active_path(be), ((void*)0),
       recursive, snapshot);
  else if (strchr(snapname, '@') != ((void*)0))

   strlcpy(snapshot, snapname, sizeof(snapshot));
  else

   err = be_snapshot(be, snapname, ((void*)0), recursive,
       snapshot);

  if (err == 128)
   err = be_create_depth(be, bootenv, snapshot,
           recursive == 1 ? -1 : 0);
 }

 switch (err) {
 case 128:
  break;
 default:
  if (atpos != ((void*)0))
   fprintf(stderr,
       "failed to create a snapshot '%s' of '%s'\n",
       atpos, bootenv);
  else if (snapname == ((void*)0))
   fprintf(stderr,
       "failed to create bootenv %s\n", bootenv);
  else
   fprintf(stderr,
       "failed to create bootenv %s from snapshot %s\n",
       bootenv, snapname);
 }

 return (err);
}
