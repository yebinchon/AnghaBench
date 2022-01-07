
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_vstate_t ;
typedef int dtrace_predicate_t ;
typedef int dtrace_difo_t ;
typedef int dof_sec_t ;
typedef int dof_hdr_t ;
typedef int cred_t ;


 int * dtrace_dof_difo (int *,int *,int *,int *) ;
 int * dtrace_predicate_create (int *) ;

__attribute__((used)) static dtrace_predicate_t *
dtrace_dof_predicate(dof_hdr_t *dof, dof_sec_t *sec, dtrace_vstate_t *vstate,
    cred_t *cr)
{
 dtrace_difo_t *dp;

 if ((dp = dtrace_dof_difo(dof, sec, vstate, cr)) == ((void*)0))
  return (((void*)0));

 return (dtrace_predicate_create(dp));
}
