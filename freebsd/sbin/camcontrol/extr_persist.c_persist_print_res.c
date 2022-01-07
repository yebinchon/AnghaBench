
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint32_t ;
struct TYPE_4__ {int extent_length; int scopetype; int scope_addr; int reservation; } ;
struct TYPE_3__ {int generation; } ;
struct scsi_per_res_in_rsrv {TYPE_2__ data; TYPE_1__ header; } ;
struct scsi_per_res_in_header {int length; } ;


 int MIN (int,int) ;
 int fprintf (int ,char*,...) ;
 int persist_print_scopetype (int ) ;
 int scsi_2btoul (int ) ;
 int scsi_4btoul (int ) ;
 scalar_t__ scsi_8btou64 (int ) ;
 int stdout ;
 int warnx (char*,int) ;

__attribute__((used)) static void
persist_print_res(struct scsi_per_res_in_header *hdr, uint32_t valid_len)
{
 uint32_t length;
 struct scsi_per_res_in_rsrv *res;

 length = scsi_4btoul(hdr->length);
 length = MIN(length, valid_len);

 res = (struct scsi_per_res_in_rsrv *)hdr;

 if (length < sizeof(res->data) - sizeof(res->data.extent_length)) {
  if (length == 0)
   fprintf(stdout, "No reservations.\n");
  else
   warnx("unable to print reservation, only got %u "
         "valid bytes", length);
  return;
 }
 fprintf(stdout, "PRgeneration: %#x\n",
  scsi_4btoul(res->header.generation));
 fprintf(stdout, "Reservation Key: %#jx\n",
  (uintmax_t)scsi_8btou64(res->data.reservation));
 fprintf(stdout, "Scope address: %#x\n",
  scsi_4btoul(res->data.scope_addr));

 persist_print_scopetype(res->data.scopetype);

 fprintf(stdout, "Extent length: %u\n",
  scsi_2btoul(res->data.extent_length));
}
