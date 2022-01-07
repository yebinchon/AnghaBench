
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct its_dev {int dummy; } ;
struct TYPE_2__ {int valid; struct its_dev* its_dev; } ;
struct its_cmd_desc {TYPE_1__ cmd_desc_mapd; int cmd_type; } ;
typedef int device_t ;


 int ITS_CMD_MAPD ;
 int its_cmd_send (int ,struct its_cmd_desc*) ;

__attribute__((used)) static void
its_cmd_mapd(device_t dev, struct its_dev *its_dev, uint8_t valid)
{
 struct its_cmd_desc desc;

 desc.cmd_type = ITS_CMD_MAPD;
 desc.cmd_desc_mapd.its_dev = its_dev;
 desc.cmd_desc_mapd.valid = valid;

 its_cmd_send(dev, &desc);
}
