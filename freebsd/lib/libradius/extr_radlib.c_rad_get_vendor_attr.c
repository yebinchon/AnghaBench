
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct vendor_attribute {void* attrib_data; int attrib_len; int attrib_type; int vendor_value; } ;


 int ntohl (int ) ;

int
rad_get_vendor_attr(u_int32_t *vendor, const void **data, size_t *len)
{
 struct vendor_attribute *attr;

 attr = (struct vendor_attribute *)*data;
 *vendor = ntohl(attr->vendor_value);
 *data = attr->attrib_data;
 *len = attr->attrib_len - 2;

 return (attr->attrib_type);
}
