
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char**
module_list_avail(void)
{

        static const char* names[] = {
  "dns64",
  "respip",
  "validator",
  "iterator",
  ((void*)0)};
 return names;
}
