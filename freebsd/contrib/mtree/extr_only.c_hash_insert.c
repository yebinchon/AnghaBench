
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct hentry {char* str; size_t hash; struct hentry* next; } ;


 struct hentry* malloc (int) ;
 int mtree_err (char*) ;
 char* strdup (char*) ;
 struct hentry** table ;

__attribute__((used)) static void
hash_insert(char *str, uint32_t h)
{
 struct hentry *e;
 char *x;

 if ((e = malloc(sizeof(*e))) == ((void*)0))
  mtree_err("memory allocation error");
 if ((x = strdup(str)) == ((void*)0))
  mtree_err("memory allocation error");

 e->str = x;
 e->hash = h;
 e->next = table[h];
 table[h] = e;
}
