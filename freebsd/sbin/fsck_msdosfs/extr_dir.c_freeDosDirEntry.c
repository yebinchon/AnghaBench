
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dosDirEntry {struct dosDirEntry* next; } ;


 struct dosDirEntry* freede ;

__attribute__((used)) static void
freeDosDirEntry(struct dosDirEntry *de)
{
 de->next = freede;
 freede = de;
}
