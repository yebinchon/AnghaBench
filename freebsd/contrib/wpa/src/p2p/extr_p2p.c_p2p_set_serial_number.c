
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int * serial_number; } ;


 int os_free (int *) ;
 int * os_strdup (char const*) ;

int p2p_set_serial_number(struct p2p_data *p2p, const char *serial_number)
{
 os_free(p2p->cfg->serial_number);
 p2p->cfg->serial_number = ((void*)0);
 if (serial_number) {
  p2p->cfg->serial_number = os_strdup(serial_number);
  if (p2p->cfg->serial_number == ((void*)0))
   return -1;
 }

 return 0;
}
