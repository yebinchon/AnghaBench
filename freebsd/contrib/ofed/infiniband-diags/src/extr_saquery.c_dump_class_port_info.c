
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int base_ver; int class_ver; int trap_qkey; int trap_hop_qp; int trap_pkey; int trap_lid; int trap_tc_sl_fl; int trap_gid; int redir_qkey; int redir_qp; int redir_pkey; int redir_lid; int redir_tc_sl_fl; int redir_gid; int cap_mask; } ;
typedef TYPE_1__ ib_class_port_info_t ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int cl_ntoh16 (int ) ;
 int cl_ntoh32 (int ) ;
 int ib_class_cap_mask2 (TYPE_1__*) ;
 int ib_class_resp_time_val (TYPE_1__*) ;
 char* inet_ntop (int ,int *,char*,int) ;
 int printf (char*,int,int,int,int,int,char*,int,int,int,int,int,char*,int,int,int,int,int) ;

__attribute__((used)) static void dump_class_port_info(ib_class_port_info_t *cpi)
{
 char gid_str[INET6_ADDRSTRLEN];
 char gid_str2[INET6_ADDRSTRLEN];

 printf("SA ClassPortInfo:\n"
        "\t\tBase version.............%d\n"
        "\t\tClass version............%d\n"
        "\t\tCapability mask..........0x%04X\n"
        "\t\tCapability mask 2........0x%08X\n"
        "\t\tResponse time value......0x%02X\n"
        "\t\tRedirect GID.............%s\n"
        "\t\tRedirect TC/SL/FL........0x%08X\n"
        "\t\tRedirect LID.............%u\n"
        "\t\tRedirect PKey............0x%04X\n"
        "\t\tRedirect QP..............0x%08X\n"
        "\t\tRedirect QKey............0x%08X\n"
        "\t\tTrap GID.................%s\n"
        "\t\tTrap TC/SL/FL............0x%08X\n"
        "\t\tTrap LID.................%u\n"
        "\t\tTrap PKey................0x%04X\n"
        "\t\tTrap HL/QP...............0x%08X\n"
        "\t\tTrap QKey................0x%08X\n",
        cpi->base_ver, cpi->class_ver, cl_ntoh16(cpi->cap_mask),
        ib_class_cap_mask2(cpi), ib_class_resp_time_val(cpi),
        inet_ntop(AF_INET6, &(cpi->redir_gid), gid_str, sizeof gid_str),
        cl_ntoh32(cpi->redir_tc_sl_fl), cl_ntoh16(cpi->redir_lid),
        cl_ntoh16(cpi->redir_pkey), cl_ntoh32(cpi->redir_qp),
        cl_ntoh32(cpi->redir_qkey),
        inet_ntop(AF_INET6, &(cpi->trap_gid), gid_str2, sizeof gid_str2),
        cl_ntoh32(cpi->trap_tc_sl_fl), cl_ntoh16(cpi->trap_lid),
        cl_ntoh16(cpi->trap_pkey), cl_ntoh32(cpi->trap_hop_qp),
        cl_ntoh32(cpi->trap_qkey));
}
