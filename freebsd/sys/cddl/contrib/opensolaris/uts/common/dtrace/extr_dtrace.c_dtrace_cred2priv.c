
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zoneid_t ;
typedef int uint32_t ;
typedef int uid_t ;
typedef int cred_t ;


 int B_FALSE ;
 int DTRACE_PRIV_ALL ;
 int DTRACE_PRIV_KERNEL ;
 int DTRACE_PRIV_OWNER ;
 int DTRACE_PRIV_PROC ;
 int DTRACE_PRIV_USER ;
 int DTRACE_PRIV_ZONEOWNER ;
 int PRIV_ALL ;
 int PRIV_DTRACE_KERNEL ;
 int PRIV_DTRACE_PROC ;
 int PRIV_DTRACE_USER ;
 scalar_t__ PRIV_POLICY_ONLY (int *,int ,int ) ;
 int PRIV_PROC_OWNER ;
 int PRIV_PROC_ZONE ;
 int crgetuid (int *) ;
 int crgetzoneid (int *) ;

__attribute__((used)) static void
dtrace_cred2priv(cred_t *cr, uint32_t *privp, uid_t *uidp, zoneid_t *zoneidp)
{
 uint32_t priv;
 priv = DTRACE_PRIV_ALL;


 *privp = priv;
}
