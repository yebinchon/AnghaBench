
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct tac_handle {int srvr_pos; TYPE_1__ response; } ;


 int generr (struct tac_handle*,char*,int,int) ;
 int ntohl (int ) ;

__attribute__((used)) static int
get_srvr_end(struct tac_handle *h)
{
 int len;

 len = ntohl(h->response.length);

 if (h->srvr_pos != len) {
  generr(h, "Invalid length field in response "
         "from server: end expected at %u, response length %u",
         h->srvr_pos, len);
  return -1;
 }
 return 0;
}
