
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dosDirEntry {struct dosDirEntry* next; } ;


 struct dosDirEntry* freede ;
 struct dosDirEntry* malloc (int) ;

__attribute__((used)) static struct dosDirEntry *
newDosDirEntry(void)
{
 struct dosDirEntry *de;

 if (!(de = freede)) {
  if (!(de = malloc(sizeof *de)))
   return 0;
 } else
  freede = de->next;
 return de;
}
