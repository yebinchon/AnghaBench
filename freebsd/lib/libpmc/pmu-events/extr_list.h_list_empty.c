
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head const* next; } ;



__attribute__((used)) static inline int
list_empty(const struct list_head *head)
{

 return (head->next == head);
}
