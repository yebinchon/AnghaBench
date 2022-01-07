
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_key {int next_pn; int user; int created_time; void* receives; void* transmits; } ;


 void* TRUE ;
 int os_get_time (int *) ;

__attribute__((used)) static void ieee802_1x_kay_init_data_key(struct data_key *pkey)
{
 pkey->transmits = TRUE;
 pkey->receives = TRUE;
 os_get_time(&pkey->created_time);

 pkey->next_pn = 1;
 pkey->user = 1;
}
