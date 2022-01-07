
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct member_entry {char* key; char* domain; struct member_entry* next; struct grouplist* groups; } ;
struct grouplist {char* groupname; struct grouplist* next; } ;
struct group_entry {struct group_entry* next; int key; } ;
typedef int readbuf ;
typedef int FILE ;


 int LINSIZ ;
 int TABLESIZE ;
 int __endnetgrent () ;
 scalar_t__ __getnetgrent (char**,char**,char**) ;
 int __setnetgrent (int ) ;
 int err (int,char*,char*) ;
 int exit (int ) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int getopt (int,char**,char*) ;
 struct group_entry** gtable ;
 int mstore (struct member_entry**,char*,int ,char*) ;
 struct member_entry** mtable ;
 char* netgroup ;
 char* optarg ;
 int printf (char*,...) ;
 int * stdin ;
 int store (struct group_entry**,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strpbrk (char*,char*) ;
 int usage () ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 FILE *fp;
 char readbuf[LINSIZ];
 struct group_entry *gcur;
 struct member_entry *mcur;
 char *host, *user, *domain;
 int ch;
 char *key = ((void*)0), *data = ((void*)0);
 int hosts = -1, i;

 if (argc < 2)
  usage();

 while ((ch = getopt(argc, argv, "uhf:")) != -1) {
  switch(ch) {
  case 'u':
   if (hosts != -1) {
    warnx("please use only one of -u or -h");
    usage();
   }
   hosts = 0;
   break;
  case 'h':
   if (hosts != -1) {
    warnx("please use only one of -u or -h");
    usage();
   }
   hosts = 1;
   break;
  case 'f':
   netgroup = optarg;
   break;
  default:
   usage();
   break;
  }
 }

 if (hosts == -1)
  usage();

 if (strcmp(netgroup, "-")) {
  if ((fp = fopen(netgroup, "r")) == ((void*)0)) {
   err(1, "%s", netgroup);
  }
 } else {
  fp = stdin;
 }


 while (fgets(readbuf, LINSIZ, fp)) {
  if (readbuf[0] == '#')
   continue;

  while(readbuf[strlen(readbuf) - 2] == '\\') {
   fgets((char *)&readbuf[strlen(readbuf) - 2],
     sizeof(readbuf) - strlen(readbuf), fp);
  }
  data = ((void*)0);
  if ((data = (char *)(strpbrk(readbuf, " \t") + 1)) < (char *)2)
   continue;
  key = (char *)&readbuf;
  *(data - 1) = '\0';
  store(gtable, key, data);
 }

 fclose(fp);





 for (i = 0; i < TABLESIZE; i++) {
  gcur = gtable[i];
  while(gcur) {
   __setnetgrent(gcur->key);
   while(__getnetgrent(&host, &user, &domain) != 0) {
    if (hosts ? host && strcmp(host,"-") : user && strcmp(user, "-"))
     mstore(mtable, hosts ? host : user, gcur->key, domain);
   }
   gcur = gcur->next;
  }
 }


 __endnetgrent();


 for (i = 0; i < TABLESIZE; i++) {
  mcur = mtable[i];
  while(mcur) {
   struct grouplist *tmp;
   printf ("%s.%s\t", mcur->key, mcur->domain);
   tmp = mcur->groups;
   while(tmp) {
    printf ("%s", tmp->groupname);
    tmp = tmp->next;
    if (tmp)
     printf(",");
   }
   mcur = mcur->next;
   printf ("\n");
  }
 }


 exit(0);
}
