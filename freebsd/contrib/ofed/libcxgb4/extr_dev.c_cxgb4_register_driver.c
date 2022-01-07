
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_PAGESIZE ;
 int c4iw_page_mask ;
 int c4iw_page_shift ;
 int c4iw_page_size ;
 int cxgb4_driver_init ;
 int long_log2 (int) ;
 int sysconf (int ) ;
 int verbs_register_driver (char*,int ) ;

__attribute__((used)) static __attribute__((constructor)) void cxgb4_register_driver(void)
{
 c4iw_page_size = sysconf(_SC_PAGESIZE);
 c4iw_page_shift = long_log2(c4iw_page_size);
 c4iw_page_mask = ~(c4iw_page_size - 1);
 verbs_register_driver("cxgb4", cxgb4_driver_init);
}
