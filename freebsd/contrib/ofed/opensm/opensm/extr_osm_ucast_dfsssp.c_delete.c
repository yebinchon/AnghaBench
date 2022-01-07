
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dfsssp_context_destroy (void*) ;
 int free (void*) ;

__attribute__((used)) static void delete(void *context)
{
 if (!context)
  return;
 dfsssp_context_destroy(context);

 free(context);
}
