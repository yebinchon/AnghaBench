
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (size_t) ;
 char* mandoc_realloc (char*,size_t) ;

__attribute__((used)) static const char *
md_stack(char c)
{
 static char *stack;
 static size_t sz;
 static size_t cur;

 switch (c) {
 case '\0':
  break;
 case (char)-1:
  assert(cur);
  stack[--cur] = '\0';
  break;
 default:
  if (cur + 1 >= sz) {
   sz += 8;
   stack = mandoc_realloc(stack, sz);
  }
  stack[cur] = c;
  stack[++cur] = '\0';
  break;
 }
 return stack == ((void*)0) ? "" : stack;
}
