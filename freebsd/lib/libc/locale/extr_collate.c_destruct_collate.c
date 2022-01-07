
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_collate {scalar_t__ maplen; scalar_t__ map; } ;


 int free (void*) ;
 int munmap (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
destruct_collate(void *t)
{
 struct xlocale_collate *table = t;
 if (table->map && (table->maplen > 0)) {
  (void) munmap(table->map, table->maplen);
 }
 free(t);
}
