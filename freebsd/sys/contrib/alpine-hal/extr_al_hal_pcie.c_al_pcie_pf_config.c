
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_pcie_port {int port_id; } ;
struct al_pcie_pf_config_params {int pf_num; struct al_pcie_port* pcie_port; } ;
typedef struct al_pcie_pf {int pf_num; struct al_pcie_port* pcie_port; } const al_pcie_pf ;


 int EINVAL ;
 int al_assert (struct al_pcie_pf_config_params const*) ;
 int al_dbg (char*,int ,int ,...) ;
 int al_err (char*,int ) ;
 int al_pcie_port_is_enabled (struct al_pcie_port*) ;
 int al_pcie_port_pf_params_config (struct al_pcie_pf_config_params const*,struct al_pcie_pf_config_params const*) ;

int
al_pcie_pf_config(
 struct al_pcie_pf *pcie_pf,
 const struct al_pcie_pf_config_params *params)
{
 struct al_pcie_port *pcie_port;
 int status = 0;

 al_assert(pcie_pf);
 al_assert(params);

 pcie_port = pcie_pf->pcie_port;

 if (!al_pcie_port_is_enabled(pcie_port)) {
  al_err("PCIe %d: port not enabled, cannot configure port\n", pcie_port->port_id);
  return -EINVAL;
 }

 al_dbg("PCIe %d: pf %d config\n", pcie_port->port_id, pcie_pf->pf_num);

 if (params)
  status = al_pcie_port_pf_params_config(pcie_pf, params);
 if (status)
  goto done;

done:
 al_dbg("PCIe %d: pf %d config %s\n",
  pcie_port->port_id, pcie_pf->pf_num, status ? "failed" : "done");

 return status;
}
