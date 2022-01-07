
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sbuf {int dummy; } ;


 int ENOMEM ;
 int SBUF_FIXEDLEN ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,size_t,int ) ;
 int scsi_cdb_sbuf (int *,struct sbuf*) ;

char *
scsi_cdb_string(u_int8_t *cdb_ptr, char *cdb_string, size_t len)
{
 struct sbuf sb;
 int error;

 if (len == 0)
  return ("");

 sbuf_new(&sb, cdb_string, len, SBUF_FIXEDLEN);

 scsi_cdb_sbuf(cdb_ptr, &sb);


 error = sbuf_finish(&sb);
 if (error != 0 && error != ENOMEM)
  return ("");

 return(sbuf_data(&sb));
}
