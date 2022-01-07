
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;


 int AMDVI_EVENT_FLAG_TYPE (int) ;
 int amdvi_decode_evt_flag (int) ;
 int amdvi_decode_evt_flag_type (int ) ;
 int printf (char*,int,int,int ) ;

__attribute__((used)) static void
amdvi_decode_page_hwerr_evt(uint16_t devid, uint16_t domid, uint64_t addr,
    uint16_t flag)
{

 printf("\t[PAGE_TAB_HW_ERR EVT: devId:0x%x DomId:0x%x"
     " Addr:0x%lx", devid, domid, addr);
 amdvi_decode_evt_flag(flag);
 amdvi_decode_evt_flag_type(AMDVI_EVENT_FLAG_TYPE(flag));
}
