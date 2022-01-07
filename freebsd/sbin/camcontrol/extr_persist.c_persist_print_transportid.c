
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_transportid_header {int dummy; } ;
struct sbuf {int dummy; } ;


 int fprintf (int ,char*,...) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int scsi_transportid_sbuf (struct sbuf*,struct scsi_transportid_header*,int ) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
persist_print_transportid(uint8_t *buf, uint32_t len)
{
 struct sbuf *sb;

 sb = sbuf_new_auto();
 if (sb == ((void*)0))
  fprintf(stderr, "Unable to allocate sbuf\n");

 scsi_transportid_sbuf(sb, (struct scsi_transportid_header *)buf, len);

 sbuf_finish(sb);

 fprintf(stdout, "%s\n", sbuf_data(sb));

 sbuf_delete(sb);
}
