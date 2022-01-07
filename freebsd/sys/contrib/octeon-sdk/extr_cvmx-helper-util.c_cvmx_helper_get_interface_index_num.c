
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCTEON_FEATURE_PKND ;
 int cvmx_dprintf (char*,...) ;
 scalar_t__ octeon_has_feature (int ) ;

int cvmx_helper_get_interface_index_num(int ipd_port)
{
    if (octeon_has_feature(OCTEON_FEATURE_PKND))
    {
        if (ipd_port >= 0x800 && ipd_port < 0xd00)
        {
            int port = ((ipd_port & 0xff) >> 6);
            return ((port) ? (port - 1) : ((ipd_port & 0xff) >> 4));
        }
        else if (ipd_port >= 0x400 && ipd_port < 0x600)
            return (ipd_port & 0xff);
        else if (ipd_port >= 0x100 && ipd_port < 0x120)
            return (ipd_port & 0xff);
        else if (ipd_port < 8)
            return ipd_port;
        else
            cvmx_dprintf("cvmx_helper_get_interface_index_num: Illegal IPD port number %d\n", ipd_port);
        return -1;
    }
    if (ipd_port < 32)
        return ipd_port & 15;
    else if (ipd_port < 40)
        return ipd_port & 3;
    else if (ipd_port < 44)
        return ipd_port & 1;
    else if (ipd_port < 46)
        return ipd_port & 1;
    else
        cvmx_dprintf("cvmx_helper_get_interface_index_num: Illegal IPD port number\n");

    return -1;
}
