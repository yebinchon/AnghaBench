
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tncc_data {int last_batchid; } ;


 int IF_TNCCS_START ;
 char* os_malloc (int) ;
 int os_snprintf (char*,int,int ,int ) ;

char * tncc_if_tnccs_start(struct tncc_data *tncc)
{
 char *buf = os_malloc(1000);
 if (buf == ((void*)0))
  return ((void*)0);
 tncc->last_batchid++;
 os_snprintf(buf, 1000, IF_TNCCS_START, tncc->last_batchid);
 return buf;
}
