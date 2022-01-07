
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* p; size_t sz; } ;
struct TYPE_3__ {size_t sz; int p; } ;
struct roffkv {TYPE_2__ val; struct roffkv* next; TYPE_1__ key; } ;


 int free (char*) ;
 void* mandoc_malloc (size_t) ;
 char* mandoc_realloc (char*,size_t) ;
 int mandoc_strndup (char const*,size_t) ;
 scalar_t__ strncmp (int ,char const*,size_t) ;

__attribute__((used)) static void
roff_setstrn(struct roffkv **r, const char *name, size_t namesz,
  const char *string, size_t stringsz, int append)
{
 struct roffkv *n;
 char *c;
 int i;
 size_t oldch, newch;


 n = *r;

 while (n && (namesz != n->key.sz ||
   strncmp(n->key.p, name, namesz)))
  n = n->next;

 if (((void*)0) == n) {

  n = mandoc_malloc(sizeof(struct roffkv));
  n->key.p = mandoc_strndup(name, namesz);
  n->key.sz = namesz;
  n->val.p = ((void*)0);
  n->val.sz = 0;
  n->next = *r;
  *r = n;
 } else if (0 == append) {
  free(n->val.p);
  n->val.p = ((void*)0);
  n->val.sz = 0;
 }

 if (((void*)0) == string)
  return;





 newch = stringsz + (1 < append ? 2u : 1u);

 if (((void*)0) == n->val.p) {
  n->val.p = mandoc_malloc(newch);
  *n->val.p = '\0';
  oldch = 0;
 } else {
  oldch = n->val.sz;
  n->val.p = mandoc_realloc(n->val.p, oldch + newch);
 }


 c = n->val.p + (int)oldch;


 i = 0;
 while (i < (int)stringsz) {




  if ('\\' == string[i] && '\\' == string[i + 1])
   i++;
  *c++ = string[i++];
 }


 if (1 < append)
  *c++ = '\n';

 *c = '\0';
 n->val.sz = (int)(c - n->val.p);
}
