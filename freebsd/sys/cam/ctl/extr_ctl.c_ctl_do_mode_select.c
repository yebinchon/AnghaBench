
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int len_left; int len_used; } ;
union ctl_modepage_info {TYPE_3__ header; } ;
struct TYPE_7__ {TYPE_1__* ctl_private; } ;
struct ctl_scsiio {int kern_data_ptr; TYPE_2__ io_hdr; } ;
union ctl_io {struct ctl_scsiio scsiio; } ;
typedef int uint8_t ;
typedef int uint16_t ;
struct scsi_mode_page_header_sp {scalar_t__ subpage; int page_length; } ;
struct scsi_mode_page_header {int page_code; int page_length; } ;
struct ctl_page_index {int page_flags; int page_code; scalar_t__ subpage; int (* select_handler ) (struct ctl_scsiio*,struct ctl_page_index*,int*) ;int page_len; int* page_data; } ;
struct TYPE_9__ {struct ctl_page_index* index; } ;
struct ctl_lun {TYPE_5__* be_lun; TYPE_4__ mode_pages; } ;
struct TYPE_10__ {scalar_t__ lun_type; } ;
struct TYPE_6__ {scalar_t__ bytes; } ;


 struct ctl_lun* CTL_LUN (union ctl_io*) ;
 int CTL_NUM_MODE_PAGES ;
 int CTL_PAGE_CHANGEABLE ;
 int CTL_PAGE_CURRENT ;
 int CTL_PAGE_FLAG_CDROM ;
 int CTL_PAGE_FLAG_DIRECT ;
 int CTL_PAGE_FLAG_PROC ;
 size_t CTL_PRIV_MODEPAGE ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int SMPH_PC_MASK ;
 int SMPH_SPF ;
 scalar_t__ T_CDROM ;
 scalar_t__ T_DIRECT ;
 scalar_t__ T_PROCESSOR ;
 int ctl_done (union ctl_io*) ;
 int ctl_set_invalid_field (struct ctl_scsiio*,int,int ,int,int,int) ;
 int ctl_set_param_len_error (struct ctl_scsiio*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 int free (int,int ) ;
 int scsi_2btoul (int ) ;
 int stub1 (struct ctl_scsiio*,struct ctl_page_index*,int*) ;

__attribute__((used)) static int
ctl_do_mode_select(union ctl_io *io)
{
 struct ctl_lun *lun = CTL_LUN(io);
 struct scsi_mode_page_header *page_header;
 struct ctl_page_index *page_index;
 struct ctl_scsiio *ctsio;
 int page_len, page_len_offset, page_len_size;
 union ctl_modepage_info *modepage_info;
 uint16_t *len_left, *len_used;
 int retval, i;

 ctsio = &io->scsiio;
 page_index = ((void*)0);
 page_len = 0;

 modepage_info = (union ctl_modepage_info *)
  ctsio->io_hdr.ctl_private[CTL_PRIV_MODEPAGE].bytes;
 len_left = &modepage_info->header.len_left;
 len_used = &modepage_info->header.len_used;

do_next_page:

 page_header = (struct scsi_mode_page_header *)
  (ctsio->kern_data_ptr + *len_used);

 if (*len_left == 0) {
  free(ctsio->kern_data_ptr, M_CTL);
  ctl_set_success(ctsio);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 } else if (*len_left < sizeof(struct scsi_mode_page_header)) {

  free(ctsio->kern_data_ptr, M_CTL);
  ctl_set_param_len_error(ctsio);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);

 } else if ((page_header->page_code & SMPH_SPF)
  && (*len_left < sizeof(struct scsi_mode_page_header_sp))) {

  free(ctsio->kern_data_ptr, M_CTL);
  ctl_set_param_len_error(ctsio);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }





 for (i = 0; i < CTL_NUM_MODE_PAGES; i++) {
  page_index = &lun->mode_pages.index[i];
  if (lun->be_lun->lun_type == T_DIRECT &&
      (page_index->page_flags & CTL_PAGE_FLAG_DIRECT) == 0)
   continue;
  if (lun->be_lun->lun_type == T_PROCESSOR &&
      (page_index->page_flags & CTL_PAGE_FLAG_PROC) == 0)
   continue;
  if (lun->be_lun->lun_type == T_CDROM &&
      (page_index->page_flags & CTL_PAGE_FLAG_CDROM) == 0)
   continue;

  if ((page_index->page_code & SMPH_PC_MASK) !=
      (page_header->page_code & SMPH_PC_MASK))
   continue;





  if (((page_index->page_code & SMPH_SPF) == 0)
   && ((page_header->page_code & SMPH_SPF) == 0)) {
   page_len = page_header->page_length;
   break;
  }





  if ((page_index->page_code & SMPH_SPF)
    && (page_header->page_code & SMPH_SPF)) {
   struct scsi_mode_page_header_sp *sph;

   sph = (struct scsi_mode_page_header_sp *)page_header;
   if (page_index->subpage == sph->subpage) {
    page_len = scsi_2btoul(sph->page_length);
    break;
   }
  }
 }





 if ((i >= CTL_NUM_MODE_PAGES)
  || (page_index->select_handler == ((void*)0))) {
  ctl_set_invalid_field(ctsio,
                        1,
                      0,
                    *len_used,
                        0,
                  0);
  free(ctsio->kern_data_ptr, M_CTL);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }

 if (page_index->page_code & SMPH_SPF) {
  page_len_offset = 2;
  page_len_size = 2;
 } else {
  page_len_size = 1;
  page_len_offset = 1;
 }






 if (page_len != page_index->page_len - page_len_offset - page_len_size) {
  ctl_set_invalid_field(ctsio,
                        1,
                      0,
                    *len_used + page_len_offset,
                        0,
                  0);
  free(ctsio->kern_data_ptr, M_CTL);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }
 if (*len_left < page_index->page_len) {
  free(ctsio->kern_data_ptr, M_CTL);
  ctl_set_param_len_error(ctsio);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }





 for (i = 0; i < page_index->page_len; i++) {
  uint8_t *user_byte, *change_mask, *current_byte;
  int bad_bit;
  int j;

  user_byte = (uint8_t *)page_header + i;
  change_mask = page_index->page_data +
         (page_index->page_len * CTL_PAGE_CHANGEABLE) + i;
  current_byte = page_index->page_data +
          (page_index->page_len * CTL_PAGE_CURRENT) + i;





  if ((*user_byte & ~(*change_mask)) ==
      (*current_byte & ~(*change_mask)))
   continue;




  bad_bit = 0;
  for (j = 7; j >= 0; j--) {
   if ((((1 << i) & ~(*change_mask)) & *user_byte) !=
       (((1 << i) & ~(*change_mask)) & *current_byte)) {
    bad_bit = i;
    break;
   }
  }
  ctl_set_invalid_field(ctsio,
                        1,
                      0,
                    *len_used + i,
                        1,
                  bad_bit);
  free(ctsio->kern_data_ptr, M_CTL);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }






 *len_left -= page_index->page_len;
 *len_used += page_index->page_len;

 retval = page_index->select_handler(ctsio, page_index,
         (uint8_t *)page_header);
 if (retval != CTL_RETVAL_COMPLETE)
  goto bailout_no_done;




 if (*len_left > 0)
  goto do_next_page;

 ctl_set_success(ctsio);
 free(ctsio->kern_data_ptr, M_CTL);
 ctl_done((union ctl_io *)ctsio);

bailout_no_done:

 return (CTL_RETVAL_COMPLETE);

}
