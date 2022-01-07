
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union cd_pages {int dummy; } cd_pages ;
struct scsi_mode_header_6 {int dummy; } ;
struct scsi_mode_header_10 {int dummy; } ;
struct cd_mode_params {int cdb_size; scalar_t__ mode_buf; } ;


 scalar_t__ find_mode_page_10 (struct scsi_mode_header_10*) ;
 scalar_t__ find_mode_page_6 (struct scsi_mode_header_6*) ;

__attribute__((used)) static union cd_pages *
cdgetpage(struct cd_mode_params *mode_params)
{
 union cd_pages *page;

 if (mode_params->cdb_size == 10)
  page = (union cd_pages *)find_mode_page_10(
   (struct scsi_mode_header_10 *)mode_params->mode_buf);
 else
  page = (union cd_pages *)find_mode_page_6(
   (struct scsi_mode_header_6 *)mode_params->mode_buf);

 return (page);
}
