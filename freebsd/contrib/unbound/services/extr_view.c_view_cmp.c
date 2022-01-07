
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int name; } ;


 int strcmp (int ,int ) ;

int
view_cmp(const void* v1, const void* v2)
{
 struct view* a = (struct view*)v1;
 struct view* b = (struct view*)v2;

 return strcmp(a->name, b->name);
}
