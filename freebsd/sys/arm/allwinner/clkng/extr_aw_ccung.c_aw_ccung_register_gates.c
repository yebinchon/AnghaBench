
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int parent_cnt; int * parent_names; int * name; } ;
struct clk_gate_def {int mask; int on_value; scalar_t__ off_value; int shift; int offset; TYPE_1__ clkdef; } ;
struct aw_ccung_softc {int ngates; int clkdom; TYPE_2__* gates; } ;
typedef int def ;
struct TYPE_4__ {int shift; int offset; int parent_name; int * name; } ;


 int clknode_gate_register (int ,struct clk_gate_def*) ;
 int memset (struct clk_gate_def*,int ,int) ;

__attribute__((used)) static int
aw_ccung_register_gates(struct aw_ccung_softc *sc)
{
 struct clk_gate_def def;
 int i;

 for (i = 0; i < sc->ngates; i++) {
  if (sc->gates[i].name == ((void*)0))
   continue;
  memset(&def, 0, sizeof(def));
  def.clkdef.id = i;
  def.clkdef.name = sc->gates[i].name;
  def.clkdef.parent_names = &sc->gates[i].parent_name;
  def.clkdef.parent_cnt = 1;
  def.offset = sc->gates[i].offset;
  def.shift = sc->gates[i].shift;
  def.mask = 1;
  def.on_value = 1;
  def.off_value = 0;
  clknode_gate_register(sc->clkdom, &def);
 }

 return (0);
}
