
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int kmem_free (char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void
strfree(char *str)
{
 ASSERT(str != ((void*)0));
 kmem_free(str, strlen(str) + 1);
}
