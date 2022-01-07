
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imc {size_t imcID; int imc_send; int supported_types; int path; int name; scalar_t__ dlhandle; } ;


 int FreeLibrary (scalar_t__) ;
 int dlclose (scalar_t__) ;
 int os_free (int ) ;
 int ** tnc_imc ;
 int tncc_imc_terminate (struct tnc_if_imc*) ;

__attribute__((used)) static void tncc_unload_imc(struct tnc_if_imc *imc)
{
 tncc_imc_terminate(imc);
 tnc_imc[imc->imcID] = ((void*)0);

 if (imc->dlhandle) {



  dlclose(imc->dlhandle);

 }
 os_free(imc->name);
 os_free(imc->path);
 os_free(imc->supported_types);
 os_free(imc->imc_send);
}
