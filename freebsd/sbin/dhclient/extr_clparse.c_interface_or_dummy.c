
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface_info {struct interface_info* next; int name; } ;


 int IFNAMSIZ ;
 struct interface_info* dummy_interfaces ;
 int error (char*,char*) ;
 struct interface_info* ifi ;
 struct interface_info* malloc (int) ;
 int memset (struct interface_info*,int ,int) ;
 int strcmp (int ,char*) ;
 int strlcpy (int ,char*,int ) ;

struct interface_info *
interface_or_dummy(char *name)
{
 struct interface_info *ip;


 if (!strcmp(ifi->name, name))
  return (ifi);


 for (ip = dummy_interfaces; ip; ip = ip->next)
  if (!strcmp(ip->name, name))
   return (ip);





 ip = malloc(sizeof(*ip));
 if (!ip)
  error("Insufficient memory to record interface %s", name);
 memset(ip, 0, sizeof(*ip));
 strlcpy(ip->name, name, IFNAMSIZ);
 ip->next = dummy_interfaces;
 dummy_interfaces = ip;
 return (ip);
}
