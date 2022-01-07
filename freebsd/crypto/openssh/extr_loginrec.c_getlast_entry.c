
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logininfo {int dummy; } ;


 int lastlog_get_entry (struct logininfo*) ;
 int utmpx_get_entry (struct logininfo*) ;
 int wtmp_get_entry (struct logininfo*) ;
 int wtmpx_get_entry (struct logininfo*) ;

int
getlast_entry(struct logininfo *li)
{
 return (0);


}
