
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {int va_gid; int va_uid; int va_mode; int va_type; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_cred {int dummy; } ;


 int puffs_access (int ,int ,int ,int ,int,struct puffs_cred const*) ;

int
dtfs_node_access(struct puffs_usermount *pu, void *opc, int acc_mode,
 const struct puffs_cred *pcr)
{
 struct puffs_node *pn = opc;

 return puffs_access(pn->pn_va.va_type, pn->pn_va.va_mode,
     pn->pn_va.va_uid, pn->pn_va.va_gid, acc_mode, pcr);
}
