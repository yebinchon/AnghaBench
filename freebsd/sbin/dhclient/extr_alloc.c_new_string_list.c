
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {char* string; } ;


 struct string_list* calloc (int,int) ;

struct string_list *
new_string_list(size_t size)
{
 struct string_list *rval;

 rval = calloc(1, sizeof(struct string_list) + size);
 if (rval != ((void*)0))
  rval->string = ((char *)rval) + sizeof(struct string_list);
 return (rval);
}
