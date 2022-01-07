
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CIU_DINT ;
 int CVMX_MIO_BOOT_BIST_STAT ;
 unsigned int cvmx_get_core_num () ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,unsigned int) ;

void cvmx_debug_trigger_exception(void)
{

  cvmx_write_csr (CVMX_CIU_DINT, 1u << cvmx_get_core_num ());



  cvmx_read_csr (CVMX_MIO_BOOT_BIST_STAT);
}
