
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {struct mac* m_string; } ;


 int free (struct mac*) ;

int
mac_free(struct mac *mac)
{

 if (mac->m_string != ((void*)0))
  free(mac->m_string);
 free(mac);

 return (0);
}
