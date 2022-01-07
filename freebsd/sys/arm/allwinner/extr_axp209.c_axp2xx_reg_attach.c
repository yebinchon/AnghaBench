
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_uvolt; int max_uvolt; } ;
struct regnode_init_def {int ofw_node; int id; TYPE_1__ std_param; } ;
struct regnode {int dummy; } ;
struct axp2xx_regdef {int voltage_min; int voltage_max; int id; } ;
struct axp2xx_reg_sc {int param; int xref; struct axp2xx_regdef* def; int base_dev; struct regnode* regnode; } ;
typedef int phandle_t ;
typedef int initdef ;
typedef int device_t ;


 int OF_xref_from_node (int ) ;
 int axp2xx_regnode_class ;
 int device_printf (int ,char*) ;
 int memset (struct regnode_init_def*,int ,int) ;
 struct regnode* regnode_create (int ,int *,struct regnode_init_def*) ;
 struct axp2xx_reg_sc* regnode_get_softc (struct regnode*) ;
 int regnode_get_stdparam (struct regnode*) ;
 int regnode_register (struct regnode*) ;
 scalar_t__ regulator_parse_ofw_stdparam (int ,int ,struct regnode_init_def*) ;

__attribute__((used)) static struct axp2xx_reg_sc *
axp2xx_reg_attach(device_t dev, phandle_t node,
    struct axp2xx_regdef *def)
{
 struct axp2xx_reg_sc *reg_sc;
 struct regnode_init_def initdef;
 struct regnode *regnode;

 memset(&initdef, 0, sizeof(initdef));
 if (regulator_parse_ofw_stdparam(dev, node, &initdef) != 0) {
  device_printf(dev, "cannot create regulator\n");
  return (((void*)0));
 }
 if (initdef.std_param.min_uvolt == 0)
  initdef.std_param.min_uvolt = def->voltage_min * 1000;
 if (initdef.std_param.max_uvolt == 0)
  initdef.std_param.max_uvolt = def->voltage_max * 1000;
 initdef.id = def->id;
 initdef.ofw_node = node;
 regnode = regnode_create(dev, &axp2xx_regnode_class, &initdef);
 if (regnode == ((void*)0)) {
  device_printf(dev, "cannot create regulator\n");
  return (((void*)0));
 }

 reg_sc = regnode_get_softc(regnode);
 reg_sc->regnode = regnode;
 reg_sc->base_dev = dev;
 reg_sc->def = def;
 reg_sc->xref = OF_xref_from_node(node);
 reg_sc->param = regnode_get_stdparam(regnode);

 regnode_register(regnode);

 return (reg_sc);
}
