
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int s; int * node; } ;
typedef TYPE_1__ strnodelist ;
typedef int filenode ;


 TYPE_1__* bl_list ;
 TYPE_1__* emalloc (scalar_t__) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
add_before(filenode *fnode, char *s)
{
 strnodelist *bf_ent;

 bf_ent = emalloc(sizeof *bf_ent + strlen(s));
 bf_ent->node = fnode;
 strcpy(bf_ent->s, s);
 bf_ent->next = bl_list;
 bl_list = bf_ent;
}
