
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int m_string; } ;


 int ENOMEM ;
 char* strdup (int ) ;

int
mac_to_text(struct mac *mac, char **text)
{

 *text = strdup(mac->m_string);
 if (*text == ((void*)0))
  return (ENOMEM);
 return (0);
}
