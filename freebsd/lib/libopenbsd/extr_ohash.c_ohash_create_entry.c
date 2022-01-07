
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohash_info {char* (* alloc ) (int,int ) ;int key_offset; int data; } ;


 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 char* stub1 (int,int ) ;

void *
ohash_create_entry(struct ohash_info *i, const char *start, const char **end)
{
 char *p;

 if (!*end)
  *end = start + strlen(start);
 p = (i->alloc)(i->key_offset + (*end - start) + 1, i->data);
 if (p) {
  memcpy(p+i->key_offset, start, *end-start);
  p[i->key_offset + (*end - start)] = '\0';
 }
 return (void *)p;
}
