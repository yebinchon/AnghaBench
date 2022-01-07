
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint32_t ;
struct scsi_per_res_key {int key; } ;
struct scsi_per_res_in_header {int generation; int length; } ;


 int MIN (int,int) ;
 int fprintf (int ,char*,int,...) ;
 int scsi_4btoul (int ) ;
 scalar_t__ scsi_8btou64 (int ) ;
 int stdout ;

__attribute__((used)) static void
persist_print_keys(struct scsi_per_res_in_header *hdr, uint32_t valid_len)
{
 uint32_t length, num_keys, i;
 struct scsi_per_res_key *key;

 length = scsi_4btoul(hdr->length);
 length = MIN(length, valid_len);

 num_keys = length / sizeof(*key);

 fprintf(stdout, "PRgeneration: %#x\n", scsi_4btoul(hdr->generation));
 fprintf(stdout, "%u key%s%s\n", num_keys, (num_keys == 1) ? "" : "s",
  (num_keys == 0) ? "." : ":");

 for (i = 0, key = (struct scsi_per_res_key *)&hdr[1]; i < num_keys;
      i++, key++) {
  fprintf(stdout, "%u: %#jx\n", i,
   (uintmax_t)scsi_8btou64(key->key));
 }
}
