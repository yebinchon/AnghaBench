
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int writebuf ;
typedef char* u_long ;
struct grouplist {scalar_t__ groupid; struct grouplist* next; } ;
struct group {char** gr_mem; int gr_gid; } ;
typedef scalar_t__ gid_t ;
typedef int FILE ;


 int LINSIZ ;
 char* OPSYS ;
 int _endgrent () ;
 struct group* _getgrent () ;
 int * _gr_fp ;
 int _setgrent () ;
 scalar_t__ atol (char*) ;
 int dtable ;
 int err (int,char*,void*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (void*,char*) ;
 int getopt (int,char**,char*) ;
 void* groupfile ;
 void* hostsfile ;
 struct grouplist* lookup (int ,char*) ;
 int mstore (int ,char*,int ,int) ;
 int mtable ;
 void* netidfile ;
 void* optarg ;
 void* passfile ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 char* strchr (char*,char) ;
 char* strpbrk (char*,char*) ;
 int usage () ;
 int warnx (char*,char*,...) ;
 scalar_t__ yp_get_default_domain (char**) ;

int
main(int argc, char *argv[])
{
 FILE *gfp, *pfp, *hfp, *nfp;
 char readbuf[LINSIZ];
 char writebuf[LINSIZ];
 struct group *gr;
 struct grouplist *glist;
 char *domain;
 int ch;
 gid_t i;
 char *ptr, *pidptr, *gidptr, *hptr;
 int quiet = 0;

 domain = ((void*)0);
 while ((ch = getopt(argc, argv, "g:p:h:n:d:q")) != -1) {
  switch(ch) {
  case 'g':
   groupfile = optarg;
   break;
  case 'p':
   passfile = optarg;
   break;
  case 'h':
   hostsfile = optarg;
   break;
  case 'n':
   netidfile = optarg;
   break;
  case 'd':
   domain = optarg;
   break;
  case 'q':
   quiet++;
   break;
  default:
   usage();
   break;
  }
 }

 if (domain == ((void*)0)) {
  if (yp_get_default_domain(&domain))
   errx(1, "no domain name specified and default domain not set");

 }

 if ((gfp = fopen(groupfile, "r")) == ((void*)0)) {
  err(1, "%s", groupfile);
 }

 if ((pfp = fopen(passfile, "r")) == ((void*)0)) {
  err(1, "%s", passfile);
 }

 if ((hfp = fopen(hostsfile, "r")) == ((void*)0)) {
  err(1, "%s", hostsfile);
 }

 if ((nfp = fopen(netidfile, "r")) == ((void*)0)) {

  nfp = ((void*)0);
 }

 _gr_fp = gfp;



 _setgrent();
 while((gr = _getgrent()) != ((void*)0)) {
  while(*gr->gr_mem) {
   mstore(mtable, *gr->gr_mem, gr->gr_gid, 0);
   gr->gr_mem++;
  }
 }

 fclose(gfp);
 _endgrent();





 while(fgets(readbuf, LINSIZ, pfp)) {

  for (ptr = readbuf; *ptr != '\0'; ptr++)
   if (*ptr != ' ' && *ptr != '\t')
    break;
  if (*ptr == '#' || *ptr == '\0')
   continue;
  if ((ptr = strchr(readbuf, ':')) == ((void*)0)) {
   warnx("bad passwd file entry: %s", readbuf);
   continue;
  }
  *ptr = '\0';
  ptr++;
  if ((ptr = strchr(ptr, ':')) == ((void*)0)) {
   warnx("bad passwd file entry: %s", readbuf);
   continue;
  }
  *ptr = '\0';
  ptr++;
  pidptr = ptr;
  if ((ptr = strchr(ptr, ':')) == ((void*)0)) {
   warnx("bad passwd file entry: %s", readbuf);
   continue;
  }
  *ptr = '\0';
  ptr++;
  gidptr = ptr;
  if ((ptr = strchr(ptr, ':')) == ((void*)0)) {
   warnx("bad passwd file entry: %s", readbuf);
   continue;
  }
  *ptr = '\0';
  i = atol(gidptr);

  snprintf(writebuf, sizeof(writebuf), "%s.%s@%s", OPSYS,
       pidptr, domain);

  if (lookup(dtable, writebuf)) {
   if (!quiet)
    warnx("duplicate netid '%s.%s@%s' -- skipping",
      OPSYS, pidptr, domain);
   continue;
  } else {
   mstore(dtable, writebuf, 0, 1);
  }
  printf("%s.%s@%s %s:%s", OPSYS, pidptr, domain, pidptr, gidptr);
  if ((glist = lookup(mtable, (char *)&readbuf)) != ((void*)0)) {
   while(glist) {
    if (glist->groupid != i)
     printf(",%lu", (u_long)glist->groupid);
    glist = glist->next;
   }
  }
  printf ("\n");
 }

 fclose(pfp);





 while ((ptr = fgets(readbuf, LINSIZ, hfp))) {
  if (*ptr == '#')
   continue;
  if (!(hptr = strpbrk(ptr, "#\n")))
   continue;
  *hptr = '\0';
  if (!(hptr = strpbrk(ptr, " \t")))
   continue;
  *hptr++ = '\0';
  ptr = hptr;
  while (*ptr == ' ' || *ptr == '\t')
   ptr++;
  if (!(hptr = strpbrk(ptr, " \t")))
   continue;
  *hptr++ = '\0';
  snprintf(writebuf, sizeof(writebuf), "%s.%s@%s", OPSYS,
        ptr, domain);
  if (lookup(dtable, (char *)&writebuf)) {
   if (!quiet)
    warnx("duplicate netid '%s' -- skipping",
        writebuf);
   continue;
  } else {
   mstore(dtable, (char *)&writebuf, 0, 1);
  }
  printf ("%s.%s@%s 0:%s\n", OPSYS, ptr, domain, ptr);
 }

 fclose(hfp);






 if (nfp != ((void*)0)) {
  while(fgets(readbuf, LINSIZ, nfp)) {
   if (readbuf[0] == '#')
    continue;
   if ((ptr = strpbrk((char*)&readbuf, " \t")) == ((void*)0)) {
    warnx("bad netid entry: '%s'", readbuf);
    continue;
   }

   writebuf[0] = *ptr;
   *ptr = '\0';
   if (lookup(dtable, (char *)&readbuf)) {
    if (!quiet)
     warnx("duplicate netid '%s' -- skipping",
        readbuf);
    continue;
   } else {
    mstore(dtable, (char *)&readbuf, 0, 1);
   }
   *ptr = writebuf[0];
   printf("%s",readbuf);
  }
  fclose(nfp);
 }

 exit(0);
}
