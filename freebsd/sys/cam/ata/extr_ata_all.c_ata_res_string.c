
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct ata_res {int dummy; } ;


 int ENOMEM ;
 int SBUF_FIXEDLEN ;
 int ata_res_sbuf (struct ata_res*,struct sbuf*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,size_t,int ) ;

char *
ata_res_string(struct ata_res *res, char *res_string, size_t len)
{
 struct sbuf sb;
 int error;

 if (len == 0)
  return ("");

 sbuf_new(&sb, res_string, len, SBUF_FIXEDLEN);
 ata_res_sbuf(res, &sb);

 error = sbuf_finish(&sb);
 if (error != 0 && error != ENOMEM)
  return ("");

 return(sbuf_data(&sb));
}
