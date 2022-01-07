
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nd_smi_module_loaded ;
 scalar_t__ smiLoadModule (char const*) ;
 int snprintf (char*,size_t,char*,char const*) ;

int
nd_load_smi_module(const char *module, char *errbuf, size_t errbuf_size)
{
 snprintf(errbuf, errbuf_size, "MIB module %s not loaded: no libsmi support",
     module);
 return (-1);

}
