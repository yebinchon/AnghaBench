
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int socket; int socket6; int * proc; int bufsize6; int * buf6; int mctx; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int close (int) ;
 int fclose (int *) ;
 int isc_mem_put (int ,int *,int ) ;

__attribute__((used)) static void
internal_destroy(isc_interfaceiter_t *iter) {
 (void) close(iter->socket);
 if (iter->proc != ((void*)0))
  fclose(iter->proc);

}
