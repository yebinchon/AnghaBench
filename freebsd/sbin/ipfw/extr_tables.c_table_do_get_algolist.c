
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipfw_obj_lheader ;


 int IP_FW_TABLES_ALIST ;
 int table_do_get_stdlist (int ,int **) ;

__attribute__((used)) static int
table_do_get_algolist(ipfw_obj_lheader **polh)
{

 return (table_do_get_stdlist(IP_FW_TABLES_ALIST, polh));
}
