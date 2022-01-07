
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* DBUS_TYPE_ARRAY_AS_STRING ;

 char const* DBUS_TYPE_BOOLEAN_AS_STRING ;

 char const* DBUS_TYPE_BYTE_AS_STRING ;

 char const* DBUS_TYPE_DOUBLE_AS_STRING ;

 char const* DBUS_TYPE_INT16_AS_STRING ;

 char const* DBUS_TYPE_INT32_AS_STRING ;

 char const* DBUS_TYPE_INT64_AS_STRING ;

 char const* DBUS_TYPE_OBJECT_PATH_AS_STRING ;

 char const* DBUS_TYPE_STRING_AS_STRING ;

 char const* DBUS_TYPE_UINT16_AS_STRING ;

 char const* DBUS_TYPE_UINT32_AS_STRING ;

 char const* DBUS_TYPE_UINT64_AS_STRING ;

const char * wpa_dbus_type_as_string(const int type)
{
 switch (type) {
 case 137:
  return DBUS_TYPE_BYTE_AS_STRING;
 case 138:
  return DBUS_TYPE_BOOLEAN_AS_STRING;
 case 135:
  return DBUS_TYPE_INT16_AS_STRING;
 case 130:
  return DBUS_TYPE_UINT16_AS_STRING;
 case 134:
  return DBUS_TYPE_INT32_AS_STRING;
 case 129:
  return DBUS_TYPE_UINT32_AS_STRING;
 case 133:
  return DBUS_TYPE_INT64_AS_STRING;
 case 128:
  return DBUS_TYPE_UINT64_AS_STRING;
 case 136:
  return DBUS_TYPE_DOUBLE_AS_STRING;
 case 131:
  return DBUS_TYPE_STRING_AS_STRING;
 case 132:
  return DBUS_TYPE_OBJECT_PATH_AS_STRING;
 case 139:
  return DBUS_TYPE_ARRAY_AS_STRING;
 default:
  return ((void*)0);
 }
}
