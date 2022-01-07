
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_monetary {struct xlocale_monetary* buffer; } ;


 int free (struct xlocale_monetary*) ;

__attribute__((used)) static void
destruct_monetary(void *v)
{
 struct xlocale_monetary *l = v;
 if (l->buffer)
  free(l->buffer);
 free(l);
}
