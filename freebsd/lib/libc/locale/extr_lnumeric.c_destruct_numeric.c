
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_numeric {struct xlocale_numeric* buffer; } ;


 int free (struct xlocale_numeric*) ;

__attribute__((used)) static void
destruct_numeric(void *v)
{
 struct xlocale_numeric *l = v;
 if (l->buffer)
  free(l->buffer);
 free(l);
}
