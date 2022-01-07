
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtableheader {long volno; size_t maxino; size_t entrytblsize; long stringsize; int ntrec; int dumpdate; int dumptime; } ;
struct entry {char* e_name; scalar_t__ e_index; struct entry* e_next; struct entry* e_entries; struct entry* e_sibling; struct entry* e_links; struct entry* e_parent; int e_namlen; } ;
typedef size_t ino_t ;
struct TYPE_2__ {scalar_t__ e_index; } ;
typedef int FILE ;


 scalar_t__ Nflag ;
 size_t UFS_WINO ;
 scalar_t__ allocsize (int ) ;
 int clearerr (int *) ;
 int done (int) ;
 int dumpdate ;
 int dumptime ;
 TYPE_1__** entry ;
 size_t entrytblsize ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int fwrite (char*,int,int,int *) ;
 struct entry* lookupino (size_t) ;
 size_t maxino ;
 int memmove (struct entry*,struct entry*,long) ;
 int ntrec ;
 int panic (char*,char*) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int vprintf (int ,char*) ;

void
dumpsymtable(char *filename, long checkpt)
{
 struct entry *ep, *tep;
 ino_t i;
 struct entry temp, *tentry;
 long mynum = 1, stroff = 0;
 FILE *fd;
 struct symtableheader hdr;

 vprintf(stdout, "Checkpointing the restore\n");
 if (Nflag)
  return;
 if ((fd = fopen(filename, "w")) == ((void*)0)) {
  fprintf(stderr, "fopen: %s\n", strerror(errno));
  panic("cannot create save file %s for symbol table\n",
   filename);
  done(1);
 }
 clearerr(fd);




 for (i = UFS_WINO; i <= maxino; i++) {
  for (ep = lookupino(i); ep != ((void*)0); ep = ep->e_links) {
   ep->e_index = mynum++;
   (void) fwrite(ep->e_name, sizeof(char),
          (int)allocsize(ep->e_namlen), fd);
  }
 }



 tep = &temp;
 stroff = 0;
 for (i = UFS_WINO; i <= maxino; i++) {
  for (ep = lookupino(i); ep != ((void*)0); ep = ep->e_links) {
   memmove(tep, ep, (long)sizeof(struct entry));
   tep->e_name = (char *)stroff;
   stroff += allocsize(ep->e_namlen);
   tep->e_parent = (struct entry *)ep->e_parent->e_index;
   if (ep->e_links != ((void*)0))
    tep->e_links =
     (struct entry *)ep->e_links->e_index;
   if (ep->e_sibling != ((void*)0))
    tep->e_sibling =
     (struct entry *)ep->e_sibling->e_index;
   if (ep->e_entries != ((void*)0))
    tep->e_entries =
     (struct entry *)ep->e_entries->e_index;
   if (ep->e_next != ((void*)0))
    tep->e_next =
     (struct entry *)ep->e_next->e_index;
   (void) fwrite((char *)tep, sizeof(struct entry), 1, fd);
  }
 }



 for (i = 0; i < entrytblsize; i++) {
  if (entry[i] == ((void*)0))
   tentry = ((void*)0);
  else
   tentry = (struct entry *)entry[i]->e_index;
  (void) fwrite((char *)&tentry, sizeof(struct entry *), 1, fd);
 }
 hdr.volno = checkpt;
 hdr.maxino = maxino;
 hdr.entrytblsize = entrytblsize;
 hdr.stringsize = stroff;
 hdr.dumptime = dumptime;
 hdr.dumpdate = dumpdate;
 hdr.ntrec = ntrec;
 (void) fwrite((char *)&hdr, sizeof(struct symtableheader), 1, fd);
 if (ferror(fd)) {
  fprintf(stderr, "fwrite: %s\n", strerror(errno));
  panic("output error to file %s writing symbol table\n",
   filename);
 }
 (void) fclose(fd);
}
