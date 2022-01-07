
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_messages {struct xlocale_messages* buffer; } ;


 int free (struct xlocale_messages*) ;

__attribute__((used)) static void destruct_messages(void *v)
{
 struct xlocale_messages *l = v;
 if (l->buffer)
  free(l->buffer);
 free(l);
}
