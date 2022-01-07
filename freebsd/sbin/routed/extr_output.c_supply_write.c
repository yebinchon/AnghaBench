
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ws_buf {int type; scalar_t__ buf; scalar_t__ n; } ;
struct TYPE_9__ {int type; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_8__ {TYPE_1__ sin_addr; } ;
struct TYPE_7__ {TYPE_4__* a; int npackets; int * ifp; TYPE_3__ to; } ;




 int RIP_AUTH_MD5 ;
 int clr_ws_buf (struct ws_buf*,TYPE_4__*) ;
 int end_md5_auth (struct ws_buf*,TYPE_4__*) ;
 int if_sick (int *) ;
 int naddr_ntoa (int ) ;
 int output (int,TYPE_3__*,int *,scalar_t__,int) ;
 int trace_pkt (char*,int ) ;
 TYPE_2__ ws ;

__attribute__((used)) static void
supply_write(struct ws_buf *wb)
{




 switch (wb->type) {
 case 129:
  trace_pkt("skip multicast to %s because impossible",
     naddr_ntoa(ws.to.sin_addr.s_addr));
  break;
 case 128:
  break;
 default:
  if (ws.a != ((void*)0) && ws.a->type == RIP_AUTH_MD5)
   end_md5_auth(wb,ws.a);
  if (output(wb->type, &ws.to, ws.ifp, wb->buf,
      ((char *)wb->n - (char*)wb->buf)) < 0
      && ws.ifp != ((void*)0))
   if_sick(ws.ifp);
  ws.npackets++;
  break;
 }

 clr_ws_buf(wb,ws.a);
}
