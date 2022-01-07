
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct cfiscsi_target {int ct_state; } ;


 int sbuf_printf (struct sbuf*,char*,int ) ;

__attribute__((used)) static int
cfiscsi_info(void *arg, struct sbuf *sb)
{
 struct cfiscsi_target *ct = (struct cfiscsi_target *)arg;
 int retval;

 retval = sbuf_printf(sb, "\t<cfiscsi_state>%d</cfiscsi_state>\n",
     ct->ct_state);
 return (retval);
}
