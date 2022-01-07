
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum evhttp_cmd_type { ____Placeholder_evhttp_cmd_type } evhttp_cmd_type ;
__attribute__((used)) static const char *
evhttp_method(enum evhttp_cmd_type type)
{
 const char *method;

 switch (type) {
 case 134:
  method = "GET";
  break;
 case 130:
  method = "POST";
  break;
 case 133:
  method = "HEAD";
  break;
 case 129:
  method = "PUT";
  break;
 case 135:
  method = "DELETE";
  break;
 case 132:
  method = "OPTIONS";
  break;
 case 128:
  method = "TRACE";
  break;
 case 136:
  method = "CONNECT";
  break;
 case 131:
  method = "PATCH";
  break;
 default:
  method = ((void*)0);
  break;
 }

 return (method);
}
