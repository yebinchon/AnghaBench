
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_time {struct xlocale_time* buffer; } ;


 int free (struct xlocale_time*) ;

__attribute__((used)) static void destruct_time(void *v)
{
 struct xlocale_time *l = v;
 if (l->buffer)
  free(l->buffer);
 free(l);
}
