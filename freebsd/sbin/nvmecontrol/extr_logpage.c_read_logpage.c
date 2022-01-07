
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
struct nvme_sanitize_status_page {int dummy; } ;
struct nvme_res_notification_page {int dummy; } ;
struct TYPE_2__ {scalar_t__ cdw14; scalar_t__ cdw13; scalar_t__ cdw12; void* cdw11; void* cdw10; void* nsid; int opc; } ;
struct nvme_pt_command {int len; int is_read; int cpl; void* buf; TYPE_1__ cmd; } ;
struct nvme_ns_list {int dummy; } ;
struct nvme_health_information_page {int dummy; } ;
struct nvme_firmware_page {int dummy; } ;
struct nvme_error_information_entry {int dummy; } ;
struct nvme_command_effects_page {int dummy; } ;
struct intel_log_temp_stats {int dummy; } ;
typedef int pt ;
 int NVME_OPC_GET_LOG_PAGE ;
 int NVME_PASSTHROUGH_CMD ;
 int err (int,char*) ;
 int errx (int,char*) ;
 void* htole32 (int) ;
 int intel_log_temp_stats_swapbytes (struct intel_log_temp_stats*) ;
 scalar_t__ ioctl (int,int ,struct nvme_pt_command*) ;
 int memset (struct nvme_pt_command*,int ,int) ;
 int nvme_command_effects_page_swapbytes (struct nvme_command_effects_page*) ;
 scalar_t__ nvme_completion_is_error (int *) ;
 int nvme_error_information_entry_swapbytes (int ) ;
 int nvme_firmware_page_swapbytes (struct nvme_firmware_page*) ;
 int nvme_health_information_page_swapbytes (struct nvme_health_information_page*) ;
 int nvme_ns_list_swapbytes (struct nvme_ns_list*) ;
 int nvme_res_notification_page_swapbytes (struct nvme_res_notification_page*) ;
 int nvme_sanitize_status_page_swapbytes (struct nvme_sanitize_status_page*) ;

void
read_logpage(int fd, uint8_t log_page, uint32_t nsid, uint8_t lsp,
    uint16_t lsi, uint8_t rae, void *payload, uint32_t payload_size)
{
 struct nvme_pt_command pt;
 struct nvme_error_information_entry *err_entry;
 u_int i, err_pages, numd;

 numd = payload_size / sizeof(uint32_t) - 1;
 memset(&pt, 0, sizeof(pt));
 pt.cmd.opc = NVME_OPC_GET_LOG_PAGE;
 pt.cmd.nsid = htole32(nsid);
 pt.cmd.cdw10 = htole32(
     (numd << 16) |
     (rae << 15) |
     (lsp << 8) |
     log_page);
 pt.cmd.cdw11 = htole32(
     ((uint32_t)lsi << 16) |
     (numd >> 16));
 pt.cmd.cdw12 = 0;
 pt.cmd.cdw13 = 0;
 pt.cmd.cdw14 = 0;
 pt.buf = payload;
 pt.len = payload_size;
 pt.is_read = 1;

 if (ioctl(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
  err(1, "get log page request failed");


 switch (log_page) {
 case 132:
  err_entry = (struct nvme_error_information_entry *)payload;
  err_pages = payload_size / sizeof(struct nvme_error_information_entry);
  for (i = 0; i < err_pages; i++)
   nvme_error_information_entry_swapbytes(err_entry++);
  break;
 case 130:
  nvme_health_information_page_swapbytes(
      (struct nvme_health_information_page *)payload);
  break;
 case 131:
  nvme_firmware_page_swapbytes(
      (struct nvme_firmware_page *)payload);
  break;
 case 134:
  nvme_ns_list_swapbytes((struct nvme_ns_list *)payload);
  break;
 case 133:
  nvme_command_effects_page_swapbytes(
      (struct nvme_command_effects_page *)payload);
  break;
 case 129:
  nvme_res_notification_page_swapbytes(
      (struct nvme_res_notification_page *)payload);
  break;
 case 128:
  nvme_sanitize_status_page_swapbytes(
      (struct nvme_sanitize_status_page *)payload);
  break;
 case 135:
  intel_log_temp_stats_swapbytes(
      (struct intel_log_temp_stats *)payload);
  break;
 default:
  break;
 }

 if (nvme_completion_is_error(&pt.cpl))
  errx(1, "get log page request returned error");
}
