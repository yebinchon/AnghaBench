
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outdata {int seq; } ;
struct grehdr {void* callId; scalar_t__ length; void* proto; void* flags; } ;


 void* htons (int) ;
 int ident ;
 scalar_t__ outp ;
 int port ;

void
gre_prep(struct outdata *outdata)
{
 struct grehdr *const gre = (struct grehdr *) outp;

 gre->flags = htons(0x2001);
 gre->proto = htons(port);
 gre->length = 0;
 gre->callId = htons(ident + outdata->seq);
}
