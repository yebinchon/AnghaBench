
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct ata_cmd {int dummy; } ;


 int ENOMEM ;
 int SBUF_FIXEDLEN ;
 int ata_cmd_sbuf (struct ata_cmd*,struct sbuf*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,size_t,int ) ;

char *
ata_cmd_string(struct ata_cmd *cmd, char *cmd_string, size_t len)
{
 struct sbuf sb;
 int error;

 if (len == 0)
  return ("");

 sbuf_new(&sb, cmd_string, len, SBUF_FIXEDLEN);
 ata_cmd_sbuf(cmd, &sb);

 error = sbuf_finish(&sb);
 if (error != 0 && error != ENOMEM)
  return ("");

 return(sbuf_data(&sb));
}
