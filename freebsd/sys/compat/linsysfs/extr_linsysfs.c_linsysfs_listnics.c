
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_node {int dummy; } ;


 int PFS_RD ;
 int linsysfs_ifnet_addr ;
 int linsysfs_ifnet_addrlen ;
 int linsysfs_ifnet_flags ;
 int linsysfs_ifnet_ifindex ;
 int linsysfs_ifnet_mtu ;
 int linsysfs_ifnet_tx_queue_len ;
 int linsysfs_ifnet_type ;
 struct pfs_node* pfs_create_dir (struct pfs_node*,char*,int *,int *,int *,int ) ;
 int pfs_create_file (struct pfs_node*,char*,int *,int *,int *,int *,int ) ;

__attribute__((used)) static void
linsysfs_listnics(struct pfs_node *dir)
{
 struct pfs_node *nic;
 struct pfs_node *lo;

 nic = pfs_create_dir(dir, "eth0", ((void*)0), ((void*)0), ((void*)0), 0);

 pfs_create_file(nic, "address", &linsysfs_ifnet_addr,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(nic, "addr_len", &linsysfs_ifnet_addrlen,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(nic, "flags", &linsysfs_ifnet_flags,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(nic, "ifindex", &linsysfs_ifnet_ifindex,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(nic, "mtu", &linsysfs_ifnet_mtu,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(nic, "tx_queue_len", &linsysfs_ifnet_tx_queue_len,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(nic, "type", &linsysfs_ifnet_type,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 lo = pfs_create_dir(dir, "lo", ((void*)0), ((void*)0), ((void*)0), 0);

 pfs_create_file(lo, "address", &linsysfs_ifnet_addr,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(lo, "addr_len", &linsysfs_ifnet_addrlen,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(lo, "flags", &linsysfs_ifnet_flags,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(lo, "ifindex", &linsysfs_ifnet_ifindex,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(lo, "mtu", &linsysfs_ifnet_mtu,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(lo, "tx_queue_len", &linsysfs_ifnet_tx_queue_len,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);

 pfs_create_file(lo, "type", &linsysfs_ifnet_type,
     ((void*)0), ((void*)0), ((void*)0), PFS_RD);
}
