
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RQUOTAPROG ;
 int RQUOTAVERS ;
 int exit (int ) ;
 int rpcb_unset (int ,int ,int *) ;

__attribute__((used)) static void
cleanup(int sig)
{

 (void)sig;
 (void)rpcb_unset(RQUOTAPROG, RQUOTAVERS, ((void*)0));
 exit(0);
}
