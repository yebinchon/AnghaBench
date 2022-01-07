
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uintmax_t ;
struct entry {int e_type; int e_flags; struct entry* e_next; int e_ino; struct entry* e_links; } ;
typedef int ino_t ;


 int EXTRACT ;
 long FAIL ;
 long GOOD ;

 int KEEP ;
 int LEAF ;
 int LINK ;


 int NEW ;
 int NODE ;

 int TMPNAME ;
 scalar_t__ TSTINO (int ,int ) ;
 struct entry* addentry (char*,int ,int) ;
 int badentry (struct entry*,char*) ;
 int deleteino (int ) ;
 int dprintf (int ,char*,char*,...) ;
 int dumpmap ;
 int flagvalues (struct entry*) ;
 int fprintf (int ,char*,char*,char*) ;
 int freeentry (struct entry*) ;
 char* keyval (int) ;
 struct entry* lookupino (int ) ;
 struct entry* lookupname (char*) ;
 int mktempname (struct entry*) ;
 int moveentry (struct entry*,char*) ;
 char* myname (struct entry*) ;
 int newnode (struct entry*) ;
 int panic (char*,...) ;
 int removeleaf (struct entry*) ;
 struct entry* removelist ;
 int renameit (char*,char*) ;
 int stderr ;
 int stdout ;

long
nodeupdates(char *name, ino_t ino, int type)
{
 struct entry *ep, *np, *ip;
 long descend = GOOD;
 int lookuptype = 0;
 int key = 0;
 if (TSTINO(ino, dumpmap))
  key |= 0x1;



 np = lookupname(name);
 if (np != ((void*)0)) {
  key |= 0x4;
  ip = lookupino(np->e_ino);
  if (ip == ((void*)0))
   panic("corrupted symbol table\n");
  if (ip != np)
   lookuptype = LINK;
 }




 ip = lookupino(ino);
 if (ip != ((void*)0)) {
  key |= 0x2;
  for (ep = ip->e_links; ep != ((void*)0); ep = ep->e_links) {
   if (ep == np) {
    ip = ep;
    break;
   }
  }
 }
 if (((key & (0x2|0x4)) == (0x2|0x4)) && ip != np) {
  if (lookuptype == LINK) {
   removeleaf(np);
   freeentry(np);
  } else {
   dprintf(stdout, "name/inode conflict, mktempname %s\n",
    myname(np));
   mktempname(np);
  }
  np = ((void*)0);
  key &= ~0x4;
 }
 if ((key & 0x1) &&
   (((key & 0x2) && ip->e_type != type) ||
    ((key & 0x4) && np->e_type != type)))
  key |= 0x8;







 switch (key) {







 case 0x2|0x4:
  ip->e_flags |= KEEP;
  dprintf(stdout, "[%s] %s: %s\n", keyval(key), name,
   flagvalues(ip));
  break;
 case 0x1|0x4:
 case 0x1|0x4|0x8:
  if (lookuptype == LINK) {
   removeleaf(np);
   freeentry(np);
  } else {
   mktempname(np);
  }
 case 0x1:
  ep = addentry(name, ino, type);
  if (type == NODE)
   newnode(ep);
  ep->e_flags |= NEW|KEEP;
  dprintf(stdout, "[%s] %s: %s\n", keyval(key), name,
   flagvalues(ep));
  break;
 case 0x1|0x2:
  if (type == LEAF && (ip->e_flags & KEEP) == 0)
   ip->e_flags |= EXTRACT;

 case 0x2:
  if ((ip->e_flags & KEEP) == 0) {
   renameit(myname(ip), name);
   moveentry(ip, name);
   ip->e_flags |= KEEP;
   dprintf(stdout, "[%s] %s: %s\n", keyval(key), name,
    flagvalues(ip));
   break;
  }
  if (ip->e_type == NODE) {
   descend = FAIL;
   fprintf(stderr,
    "deleted hard link %s to directory %s\n",
    name, myname(ip));
   break;
  }
  ep = addentry(name, ino, type|LINK);
  ep->e_flags |= NEW;
  dprintf(stdout, "[%s] %s: %s|LINK\n", keyval(key), name,
   flagvalues(ep));
  break;






 case 0x1|0x2|0x4:
  if (lookuptype == LINK) {
   removeleaf(np);
   freeentry(np);
   ep = addentry(name, ino, type|LINK);
   if (type == NODE)
           newnode(ep);
   ep->e_flags |= NEW|KEEP;
   dprintf(stdout, "[%s] %s: %s|LINK\n", keyval(key), name,
    flagvalues(ep));
   break;
  }
  if (type == LEAF && lookuptype != LINK)
   np->e_flags |= EXTRACT;
  np->e_flags |= KEEP;
  dprintf(stdout, "[%s] %s: %s\n", keyval(key), name,
   flagvalues(np));
  break;
 case 0x1|0x2|0x8:
 case 0x1|0x2|0x4|0x8:
  if (ip->e_flags & KEEP) {
   badentry(ip, "cannot KEEP and change modes");
   break;
  }
  if (ip->e_type == LEAF) {

   for (ip = lookupino(ino); ip != ((void*)0); ip = ip->e_links) {
    if (ip->e_type != LEAF)
     badentry(ip, "NODE and LEAF links to same inode");
    removeleaf(ip);
    freeentry(ip);
   }
   ip = addentry(name, ino, type);
   newnode(ip);
  } else {

   if ((ip->e_flags & TMPNAME) == 0)
    mktempname(ip);
   deleteino(ip->e_ino);
   ip->e_next = removelist;
   removelist = ip;
   ip = addentry(name, ino, type);
  }
  ip->e_flags |= NEW|KEEP;
  dprintf(stdout, "[%s] %s: %s\n", keyval(key), name,
   flagvalues(ip));
  break;





 case 0x4:
  dprintf(stdout, "[%s] %s: Extraneous name\n", keyval(key),
   name);
  descend = FAIL;
  break;
 case 0:
  fprintf(stderr, "%s: (inode %ju) not found on tape\n",
      name, (uintmax_t)ino);
  break;





 case 0x2|0x4|0x8:
 case 0x4|0x8:
 case 0x2|0x8:
  fprintf(stderr, "[%s] %s: inconsistent state\n", keyval(key),
   name);
  break;




 case 0x1|0x8:
 case 0x8:
 default:
  panic("[%s] %s: impossible state\n", keyval(key), name);
  break;
 }
 return (descend);
}
