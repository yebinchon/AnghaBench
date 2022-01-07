
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_tls {scalar_t__ head; } ;


 int free (struct ar_tls*) ;
 int heim_release (scalar_t__) ;

__attribute__((used)) static void
ar_tls_delete(void *ptr)
{
    struct ar_tls *tls = ptr;
    if (tls->head)
 heim_release(tls->head);
    free(tls);
}
