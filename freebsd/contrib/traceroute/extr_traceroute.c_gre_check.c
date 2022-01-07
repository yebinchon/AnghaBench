
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct grehdr {int callId; int proto; } ;


 scalar_t__ ident ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ port ;

int
gre_check(const u_char *data, int seq)
{
 struct grehdr *const gre = (struct grehdr *) data;

 return(ntohs(gre->proto) == port
     && ntohs(gre->callId) == ident + seq);
}
