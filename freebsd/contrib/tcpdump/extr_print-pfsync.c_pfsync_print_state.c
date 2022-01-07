
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_state {int dummy; } ;
typedef int netdissect_options ;


 int print_state (int *,struct pfsync_state*) ;
 int safeputchar (int *,char) ;

__attribute__((used)) static void
pfsync_print_state(netdissect_options *ndo, const void *bp)
{
 struct pfsync_state *st = (struct pfsync_state *)bp;

 safeputchar(ndo, '\n');
 print_state(ndo, st);
}
