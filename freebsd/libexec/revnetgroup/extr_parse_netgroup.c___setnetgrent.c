
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netgrp {int dummy; } ;
struct TYPE_2__ {char* grname; struct netgrp* gr; } ;


 int __endnetgrent () ;
 TYPE_1__ grouphead ;
 scalar_t__ malloc (scalar_t__) ;
 struct netgrp* nextgrp ;
 scalar_t__ parse_netgrp (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

void
__setnetgrent(char *group)
{


 if (group == ((void*)0) || !strlen(group))
  return;

 if (grouphead.gr == (struct netgrp *)0 ||
  strcmp(group, grouphead.grname)) {
  __endnetgrent();
  if (parse_netgrp(group))
   __endnetgrent();
  else {
   grouphead.grname = (char *)
    malloc(strlen(group) + 1);
   strcpy(grouphead.grname, group);
  }
 }
 nextgrp = grouphead.gr;
}
