
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum evhttp_cmd_type { ____Placeholder_evhttp_cmd_type } evhttp_cmd_type ;
__attribute__((used)) static int
evhttp_method_may_have_body(enum evhttp_cmd_type type)
{
 switch (type) {
 case 130:
 case 129:
 case 131:
  return 1;
 case 128:
  return 0;

 case 134:
 case 133:
 case 135:
 case 132:
 case 136:
  return 0;
 default:
  return 0;
 }
}
