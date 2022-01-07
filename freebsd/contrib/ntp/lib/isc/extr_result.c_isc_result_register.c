
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_msgcat_t ;


 int initialize () ;
 int register_table (unsigned int,unsigned int,char const**,int *,int) ;

isc_result_t
isc_result_register(unsigned int base, unsigned int nresults,
      const char **txt, isc_msgcat_t *msgcat, int set)
{
 initialize();

 return (register_table(base, nresults, txt, msgcat, set));
}
