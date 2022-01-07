
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct ccb_smpio {int smp_request_len; int * smp_request; } ;


 int sbuf_printf (struct sbuf*,char*,int ) ;
 int smp_command_decode (int *,int ,struct sbuf*,char*,int,int) ;
 int smp_command_desc (int ) ;
 scalar_t__ strlen (int ) ;

void
smp_command_sbuf(struct ccb_smpio *smpio, struct sbuf *sb,
   char *line_prefix, int first_line_len, int line_len)
{
 sbuf_printf(sb, "%s. ", smp_command_desc(smpio->smp_request[1]));





 first_line_len -= strlen(smp_command_desc(smpio->smp_request[1])) + 2;

 smp_command_decode(smpio->smp_request, smpio->smp_request_len, sb,
      line_prefix, first_line_len, line_len);
}
