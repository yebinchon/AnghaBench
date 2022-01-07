
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wps_sec_dev_type_list_len; int wps_sec_dev_type_list; int pri_dev_type; int config_methods; int dev_capab; int device_name; } ;
struct p2p_device {TYPE_1__ info; } ;
struct p2p_client_info {int num_sec_dev_types; int sec_dev_types; int pri_dev_type; int config_methods; int dev_capab; int dev_name_len; int dev_name; } ;


 int os_memcpy (int ,int ,int) ;
 int p2p_copy_filter_devname (int ,int,int ,int ) ;

__attribute__((used)) static void p2p_copy_client_info(struct p2p_device *dev,
     struct p2p_client_info *cli)
{
 p2p_copy_filter_devname(dev->info.device_name,
    sizeof(dev->info.device_name),
    cli->dev_name, cli->dev_name_len);
 dev->info.dev_capab = cli->dev_capab;
 dev->info.config_methods = cli->config_methods;
 os_memcpy(dev->info.pri_dev_type, cli->pri_dev_type, 8);
 dev->info.wps_sec_dev_type_list_len = 8 * cli->num_sec_dev_types;
 os_memcpy(dev->info.wps_sec_dev_type_list, cli->sec_dev_types,
    dev->info.wps_sec_dev_type_list_len);
}
