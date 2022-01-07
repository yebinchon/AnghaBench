
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_assertiontype_t ;







const char *
isc_assertion_typetotext(isc_assertiontype_t type) {
 const char *result;






 switch (type) {
 case 128:
  result = "REQUIRE";
  break;
 case 131:
  result = "ENSURE";
  break;
 case 130:
  result = "INSIST";
  break;
 case 129:
  result = "INVARIANT";
  break;
 default:
  result = ((void*)0);
 }
 return (result);
}
