
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pfsync_bus {int status; int creatorid; int endtime; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;


 int htonl (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static void
pfsync_print_bus(netdissect_options *ndo, const void *bp)
{
 const struct pfsync_bus *b = bp;
 uint32_t endtime;
 int min, sec;
 const char *status;

 endtime = ntohl(b->endtime);
 sec = endtime % 60;
 endtime /= 60;
 min = endtime % 60;
 endtime /= 60;

 switch (b->status) {
 case 128:
  status = "start";
  break;
 case 129:
  status = "end";
  break;
 default:
  status = "UNKNOWN";
  break;
 }

 ND_PRINT((ndo, "\n\tcreatorid: %08x age: %.2u:%.2u:%.2u status: %s",
     htonl(b->creatorid), endtime, min, sec, status));
}
