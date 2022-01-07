
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct combiner_softc {int dummy; } ;
struct TYPE_2__ {void (* ih ) (void*) ;int enabled; void* ih_user; } ;


 int CIPSR ;
 int ISTR (int) ;
 int READ4 (struct combiner_softc*,int ) ;
 TYPE_1__** intr_map ;

__attribute__((used)) static void
combiner_intr(void *arg)
{
 struct combiner_softc *sc;
 void (*ih) (void *);
 void *ih_user;
 int enabled;
 int intrs;
 int shift;
 int cirq;
 int grp;
 int i,n;

 sc = arg;

 intrs = READ4(sc, CIPSR);
 for (grp = 0; grp < 32; grp++) {
  if (intrs & (1 << grp)) {
   n = (grp / 4);
   shift = (grp % 4) * 8;

   cirq = READ4(sc, ISTR(n));
   for (i = 0; i < 8; i++) {
    if (cirq & (1 << (i + shift))) {
     ih = intr_map[grp][i].ih;
     ih_user = intr_map[grp][i].ih_user;
     enabled = intr_map[grp][i].enabled;
     if (enabled && (ih != ((void*)0))) {
      ih(ih_user);
     }
    }
   }
  }
 }
}
