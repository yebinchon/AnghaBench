
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Obj_Entry ;


 int MIPS_SET_TLS ;
 scalar_t__ RTLD_STATIC_TLS_EXTRA ;
 int TLS_TCB_SIZE ;
 scalar_t__ allocate_tls (int *,int *,int ,int) ;
 int sysarch (int ,char*) ;
 scalar_t__ tls_last_offset ;
 scalar_t__ tls_last_size ;
 scalar_t__ tls_static_space ;

void
allocate_initial_tls(Obj_Entry *objs)
{
 char *tls;






 tls_static_space = tls_last_offset + tls_last_size + RTLD_STATIC_TLS_EXTRA;

 tls = (char *) allocate_tls(objs, ((void*)0), TLS_TCB_SIZE, 8);

 sysarch(MIPS_SET_TLS, tls);
}
