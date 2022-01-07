
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u_long ;
struct entry {scalar_t__ e_type; scalar_t__ e_ino; struct entry* e_next; struct entry* e_links; struct entry* e_entries; struct entry* e_sibling; struct entry* e_parent; } ;


 scalar_t__ NODE ;
 int flagvalues (struct entry*) ;
 int fprintf (int ,char*,char*) ;
 char* myname (struct entry*) ;
 int panic (char*,int ) ;
 int stderr ;

void
badentry(struct entry *ep, char *msg)
{

 fprintf(stderr, "bad entry: %s\n", msg);
 fprintf(stderr, "name: %s\n", myname(ep));
 fprintf(stderr, "parent name %s\n", myname(ep->e_parent));
 if (ep->e_sibling != ((void*)0))
  fprintf(stderr, "sibling name: %s\n", myname(ep->e_sibling));
 if (ep->e_entries != ((void*)0))
  fprintf(stderr, "next entry name: %s\n", myname(ep->e_entries));
 if (ep->e_links != ((void*)0))
  fprintf(stderr, "next link name: %s\n", myname(ep->e_links));
 if (ep->e_next != ((void*)0))
  fprintf(stderr,
      "next hashchain name: %s\n", myname(ep->e_next));
 fprintf(stderr, "entry type: %s\n",
  ep->e_type == NODE ? "NODE" : "LEAF");
 fprintf(stderr, "inode number: %lu\n", (u_long)ep->e_ino);
 panic("flags: %s\n", flagvalues(ep));
}
