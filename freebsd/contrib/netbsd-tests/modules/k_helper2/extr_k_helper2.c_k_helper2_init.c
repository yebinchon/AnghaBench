
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prop_dictionary_t ;


 int clogp ;
 int sysctl_k_helper2_setup (int *) ;

__attribute__((used)) static
int
k_helper2_init(prop_dictionary_t props)
{
 sysctl_k_helper2_setup(&clogp);

 return 0;
}
