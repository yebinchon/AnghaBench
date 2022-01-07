
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct channel_connect {TYPE_1__* aitop; TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ ai_family; } ;


 scalar_t__ AF_UNIX ;
 int free (TYPE_1__*) ;
 int freeaddrinfo (TYPE_1__*) ;
 int memset (struct channel_connect*,int ,int) ;

__attribute__((used)) static void
channel_connect_ctx_free(struct channel_connect *cctx)
{
 free(cctx->host);
 if (cctx->aitop) {
  if (cctx->aitop->ai_family == AF_UNIX)
   free(cctx->aitop);
  else
   freeaddrinfo(cctx->aitop);
 }
 memset(cctx, 0, sizeof(*cctx));
}
