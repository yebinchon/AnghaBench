
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_3d_structure { ____Placeholder_hdmi_3d_structure } hdmi_3d_structure ;
__attribute__((used)) static const char *
hdmi_3d_structure_get_name(enum hdmi_3d_structure s3d_struct)
{
 if (s3d_struct < 0 || s3d_struct > 0xf)
  return "Invalid";

 switch (s3d_struct) {
 case 134:
  return "Frame Packing";
 case 135:
  return "Field Alternative";
 case 133:
  return "Line Alternative";
 case 130:
  return "Side-by-side (Full)";
 case 132:
  return "L + Depth";
 case 131:
  return "L + Depth + Graphics + Graphics-depth";
 case 128:
  return "Top-and-Bottom";
 case 129:
  return "Side-by-side (Half)";
 default:
  break;
 }
 return "Reserved";
}
