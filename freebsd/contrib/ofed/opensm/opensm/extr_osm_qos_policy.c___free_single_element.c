
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

__attribute__((used)) static void __free_single_element(void *p_element, void *context)
{
 if (p_element)
  free(p_element);
}
