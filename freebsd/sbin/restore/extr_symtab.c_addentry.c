
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int e_type; char* e_name; struct entry* e_links; scalar_t__ e_ino; struct entry* e_entries; struct entry* e_sibling; struct entry* e_parent; void* e_namlen; struct entry* e_next; } ;
typedef scalar_t__ ino_t ;


 int LINK ;
 scalar_t__ UFS_ROOTINO ;
 int addino (scalar_t__,struct entry*) ;
 scalar_t__ calloc (int,int) ;
 struct entry* freelist ;
 struct entry* lookupino (scalar_t__) ;
 struct entry* lookupparent (char*) ;
 int memset (struct entry*,int ,long) ;
 int panic (char*,...) ;
 void* savename (char*) ;
 void* strlen (char*) ;
 char* strrchr (char*,char) ;

struct entry *
addentry(char *name, ino_t inum, int type)
{
 struct entry *np, *ep;

 if (freelist != ((void*)0)) {
  np = freelist;
  freelist = np->e_next;
  memset(np, 0, (long)sizeof(struct entry));
 } else {
  np = (struct entry *)calloc(1, sizeof(struct entry));
  if (np == ((void*)0))
   panic("no memory to extend symbol table\n");
 }
 np->e_type = type & ~LINK;
 ep = lookupparent(name);
 if (ep == ((void*)0)) {
  if (inum != UFS_ROOTINO || lookupino(UFS_ROOTINO) != ((void*)0))
   panic("bad name to addentry %s\n", name);
  np->e_name = savename(name);
  np->e_namlen = strlen(name);
  np->e_parent = np;
  addino(UFS_ROOTINO, np);
  return (np);
 }
 np->e_name = savename(strrchr(name, '/') + 1);
 np->e_namlen = strlen(np->e_name);
 np->e_parent = ep;
 np->e_sibling = ep->e_entries;
 ep->e_entries = np;
 if (type & LINK) {
  ep = lookupino(inum);
  if (ep == ((void*)0))
   panic("link to non-existent name\n");
  np->e_ino = inum;
  np->e_links = ep->e_links;
  ep->e_links = np;
 } else if (inum != 0) {
  if (lookupino(inum) != ((void*)0))
   panic("duplicate entry\n");
  addino(inum, np);
 }
 return (np);
}
