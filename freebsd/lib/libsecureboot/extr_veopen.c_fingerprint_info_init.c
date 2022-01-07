
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int fi_list ;

__attribute__((used)) static void
fingerprint_info_init(void)
{
 static int once;

 if (once)
  return;
 LIST_INIT(&fi_list);
 once = 1;
}
