
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct fddi_header {int fddi_fc; } ;
struct TYPE_6__ {int ndo_qflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 char* etheraddr_string (TYPE_1__*,int const*) ;
 int print_fddi_fc (TYPE_1__*,int ) ;

__attribute__((used)) static inline void
fddi_hdr_print(netdissect_options *ndo,
               register const struct fddi_header *fddip, register u_int length,
               register const u_char *fsrc, register const u_char *fdst)
{
 const char *srcname, *dstname;

 srcname = etheraddr_string(ndo, fsrc);
 dstname = etheraddr_string(ndo, fdst);

 if (!ndo->ndo_qflag)
  print_fddi_fc(ndo, fddip->fddi_fc);
 ND_PRINT((ndo, "%s > %s, length %u: ",
        srcname, dstname,
        length));
}
