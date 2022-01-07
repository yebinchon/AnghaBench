
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cvmx_mgmt_port_result_t ;


 int CVMX_ERROR_GROUP_MGMT_PORT ;
 int CVMX_MGMT_PORT_INVALID_PARAM ;
 int CVMX_MGMT_PORT_SUCCESS ;
 int __cvmx_mgmt_port_num_ports () ;
 int cvmx_error_disable_group (int ,int) ;
 int cvmx_mgmt_port_disable (int) ;

cvmx_mgmt_port_result_t cvmx_mgmt_port_shutdown(int port)
{
    if ((port < 0) || (port >= __cvmx_mgmt_port_num_ports()))
        return CVMX_MGMT_PORT_INVALID_PARAM;


    cvmx_error_disable_group(CVMX_ERROR_GROUP_MGMT_PORT, port);



    cvmx_mgmt_port_disable(port);


    return CVMX_MGMT_PORT_SUCCESS;
}
