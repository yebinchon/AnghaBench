
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int s; int * node; } ;
typedef TYPE_1__ strnodelist ;
typedef int filenode ;


 TYPE_1__* emalloc (scalar_t__) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
strnode_add(strnodelist **listp, char *s, filenode *fnode)
{
 strnodelist *ent;

 ent = emalloc(sizeof *ent + strlen(s));
 ent->node = fnode;
 strcpy(ent->s, s);
 ent->next = *listp;
 *listp = ent;
}
