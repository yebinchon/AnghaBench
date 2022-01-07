
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 void* EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int TAILQ_INIT (int *) ;
 int dtrace_probe ;
 int kld_load ;
 int kld_unload_try ;
 int linker_file_foreach (int ,int *) ;
 int sdt_kld_load ;
 void* sdt_kld_load_tag ;
 int sdt_kld_unload_try ;
 void* sdt_kld_unload_try_tag ;
 int sdt_linker_file_cb ;
 int sdt_probe_func ;
 int sdt_prov_list ;

__attribute__((used)) static void
sdt_load()
{

 TAILQ_INIT(&sdt_prov_list);

 sdt_probe_func = dtrace_probe;

 sdt_kld_load_tag = EVENTHANDLER_REGISTER(kld_load, sdt_kld_load, ((void*)0),
     EVENTHANDLER_PRI_ANY);
 sdt_kld_unload_try_tag = EVENTHANDLER_REGISTER(kld_unload_try,
     sdt_kld_unload_try, ((void*)0), EVENTHANDLER_PRI_ANY);


 linker_file_foreach(sdt_linker_file_cb, ((void*)0));
}
