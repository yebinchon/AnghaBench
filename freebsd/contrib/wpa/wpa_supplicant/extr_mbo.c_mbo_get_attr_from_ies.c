
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mbo_attr_id { ____Placeholder_mbo_attr_id } mbo_attr_id ;


 int MBO_IE_VENDOR_TYPE ;
 int * get_vendor_ie (int const*,size_t,int ) ;
 int const* mbo_attr_from_mbo_ie (int const*,int) ;

const u8 * mbo_get_attr_from_ies(const u8 *ies, size_t ies_len,
     enum mbo_attr_id attr)
{
 const u8 *mbo_ie;

 mbo_ie = get_vendor_ie(ies, ies_len, MBO_IE_VENDOR_TYPE);
 if (!mbo_ie)
  return ((void*)0);

 return mbo_attr_from_mbo_ie(mbo_ie, attr);
}
