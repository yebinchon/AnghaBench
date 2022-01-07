
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IF_TNCCS_END ;
 char* os_malloc (int) ;
 int os_snprintf (char*,int,int ) ;

char * tncc_if_tnccs_end(void)
{
 char *buf = os_malloc(100);
 if (buf == ((void*)0))
  return ((void*)0);
 os_snprintf(buf, 100, IF_TNCCS_END);
 return buf;
}
