
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtableheader {int maxino; int entrytblsize; int stringsize; int volno; int ntrec; int dumpdate; int dumptime; } ;
struct stat {int st_size; } ;
struct entry {char* e_name; struct entry* e_next; struct entry* e_entries; struct entry* e_links; struct entry* e_sibling; struct entry* e_parent; int e_flags; } ;
struct TYPE_2__ {int action; } ;


 int HASHFACTOR ;
 int NEW ;
 int NODE ;
 int O_RDONLY ;
 int SKIP ;
 int UFS_ROOTINO ;
 struct entry* addentry (char*,int ,int ) ;
 int bflag ;
 void* calloc (int,unsigned int) ;
 int close (int) ;
 int command ;
 TYPE_1__ curfile ;
 int done (int) ;
 int dumpdate ;
 int dumptime ;
 struct entry** entry ;
 int entrytblsize ;
 int errno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getvol (int ) ;
 int maxino ;
 int newtapebuf (int ) ;
 int open (char*,int ,int ) ;
 int panic (char*,...) ;
 scalar_t__ read (int,char*,int) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int vprintf (int ,char*) ;

void
initsymtable(char *filename)
{
 char *base;
 long tblsize;
 struct entry *ep;
 struct entry *baseep, *lep;
 struct symtableheader hdr;
 struct stat stbuf;
 long i;
 int fd;

 vprintf(stdout, "Initialize symbol table.\n");
 if (filename == ((void*)0)) {
  entrytblsize = maxino / HASHFACTOR;
  entry = calloc((unsigned)entrytblsize, sizeof(struct entry *));
  if (entry == ((void*)0))
   panic("no memory for entry table\n");
  ep = addentry(".", UFS_ROOTINO, NODE);
  ep->e_flags |= NEW;
  return;
 }
 if ((fd = open(filename, O_RDONLY, 0)) < 0) {
  fprintf(stderr, "open: %s\n", strerror(errno));
  panic("cannot open symbol table file %s\n", filename);
 }
 if (fstat(fd, &stbuf) < 0) {
  fprintf(stderr, "stat: %s\n", strerror(errno));
  panic("cannot stat symbol table file %s\n", filename);
 }
 tblsize = stbuf.st_size - sizeof(struct symtableheader);
 base = calloc(sizeof(char), (unsigned)tblsize);
 if (base == ((void*)0))
  panic("cannot allocate space for symbol table\n");
 if (read(fd, base, (int)tblsize) < 0 ||
     read(fd, (char *)&hdr, sizeof(struct symtableheader)) < 0) {
  fprintf(stderr, "read: %s\n", strerror(errno));
  panic("cannot read symbol table file %s\n", filename);
 }
 (void)close(fd);
 switch (command) {
 case 'r':




  if (hdr.dumpdate != dumptime) {
   if (hdr.dumpdate < dumptime)
    fprintf(stderr, "Incremental tape too low\n");
   else
    fprintf(stderr, "Incremental tape too high\n");
   done(1);
  }
  break;
 case 'R':



  curfile.action = SKIP;
  dumptime = hdr.dumptime;
  dumpdate = hdr.dumpdate;
  if (!bflag)
   newtapebuf(hdr.ntrec);
  getvol(hdr.volno);
  break;
 default:
  panic("initsymtable called from command %c\n", command);
  break;
 }
 maxino = hdr.maxino;
 entrytblsize = hdr.entrytblsize;
 entry = (struct entry **)
  (base + tblsize - (entrytblsize * sizeof(struct entry *)));
 baseep = (struct entry *)(base + hdr.stringsize - sizeof(struct entry));
 lep = (struct entry *)entry;
 for (i = 0; i < entrytblsize; i++) {
  if (entry[i] == ((void*)0))
   continue;
  entry[i] = &baseep[(long)entry[i]];
 }
 for (ep = &baseep[1]; ep < lep; ep++) {
  ep->e_name = base + (long)ep->e_name;
  ep->e_parent = &baseep[(long)ep->e_parent];
  if (ep->e_sibling != ((void*)0))
   ep->e_sibling = &baseep[(long)ep->e_sibling];
  if (ep->e_links != ((void*)0))
   ep->e_links = &baseep[(long)ep->e_links];
  if (ep->e_entries != ((void*)0))
   ep->e_entries = &baseep[(long)ep->e_entries];
  if (ep->e_next != ((void*)0))
   ep->e_next = &baseep[(long)ep->e_next];
 }
}
