
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct rx_header {scalar_t__ type; } ;
typedef int netdissect_options ;
typedef int int32_t ;
typedef int a ;


 int AFSNAMEMAX ;
 int AFSOPAQUEMAX ;
 int DATEOUT () ;
 unsigned long EXTRACT_32BITS (int const*) ;
 int FIDOUT () ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 scalar_t__ RX_PACKET_TYPE_ABORT ;
 scalar_t__ RX_PACKET_TYPE_DATA ;
 int STROUT (int ) ;
 int acl_print (int *,int *,int,int *) ;
 int afs_fs_errors ;
 int fs_req ;
 unsigned long min (int ,unsigned long) ;
 int strncpy (char*,char const*,unsigned long) ;
 int tok2str (int ,char*,unsigned long) ;

__attribute__((used)) static void
fs_reply_print(netdissect_options *ndo,
               register const u_char *bp, int length, int32_t opcode)
{
 unsigned long i;
 const struct rx_header *rxh;

 if (length <= (int)sizeof(struct rx_header))
  return;

 rxh = (const struct rx_header *) bp;






 ND_PRINT((ndo, " fs reply %s", tok2str(fs_req, "op#%d", opcode)));

 bp += sizeof(struct rx_header);





 if (rxh->type == RX_PACKET_TYPE_DATA) {
  switch (opcode) {
  case 131:
  {
   char a[AFSOPAQUEMAX+1];
   ND_TCHECK2(bp[0], 4);
   i = EXTRACT_32BITS(bp);
   bp += sizeof(int32_t);
   ND_TCHECK2(bp[0], i);
   i = min(AFSOPAQUEMAX, i);
   strncpy(a, (const char *) bp, i);
   a[i] = '\0';
   acl_print(ndo, (u_char *) a, sizeof(a), (u_char *) a + i);
   break;
  }
  case 137:
  case 141:
   ND_PRINT((ndo, " new"));
   FIDOUT();
   break;
  case 151:
   ND_PRINT((ndo, " root volume"));
   STROUT(AFSNAMEMAX);
   break;
  case 153:
   DATEOUT();
   break;
  default:
   ;
  }
 } else if (rxh->type == RX_PACKET_TYPE_ABORT) {



  ND_TCHECK2(bp[0], sizeof(int32_t));
  i = (int) EXTRACT_32BITS(bp);
  bp += sizeof(int32_t);

  ND_PRINT((ndo, " error %s", tok2str(afs_fs_errors, "#%d", i)));
 } else {
  ND_PRINT((ndo, " strange fs reply of type %d", rxh->type));
 }

 return;

trunc:
 ND_PRINT((ndo, " [|fs]"));
}
