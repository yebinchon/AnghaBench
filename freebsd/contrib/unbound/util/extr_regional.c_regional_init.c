
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {char* data; scalar_t__ total_large; int * large_list; int * next; scalar_t__ first_size; scalar_t__ available; } ;


 int ALIGNMENT ;
 size_t ALIGN_UP (int,int ) ;

__attribute__((used)) static void
regional_init(struct regional* r)
{
 size_t a = ALIGN_UP(sizeof(struct regional), ALIGNMENT);
 r->data = (char*)r + a;
 r->available = r->first_size - a;
 r->next = ((void*)0);
 r->large_list = ((void*)0);
 r->total_large = 0;
}
