
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nl_item ;


 int __get_locale () ;
 char* nl_langinfo_l (int ,int ) ;

char *
nl_langinfo(nl_item item)
{
 return nl_langinfo_l(item, __get_locale());
}
