
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct pfsync_tdb {int cur_bytes; int rpl; int spi; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 scalar_t__ be64toh (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static void
pfsync_print_tdb(netdissect_options *ndo, const void *bp)
{
 const struct pfsync_tdb *t = bp;

 ND_PRINT((ndo, "\n\tspi: 0x%08x rpl: %ju cur_bytes: %ju",
     ntohl(t->spi), (uintmax_t )be64toh(t->rpl),
     (uintmax_t )be64toh(t->cur_bytes)));
}
