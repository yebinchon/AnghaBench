
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_VENDOR_RANGE1_END_CLASS ;
 int IB_VENDOR_RANGE1_START_CLASS ;
 int IB_VENDOR_RANGE2_END_CLASS ;
 int IB_VENDOR_RANGE2_START_CLASS ;

__attribute__((used)) static int mgmt_class_vers(int mgmt_class)
{
 if ((mgmt_class >= IB_VENDOR_RANGE1_START_CLASS &&
      mgmt_class <= IB_VENDOR_RANGE1_END_CLASS) ||
     (mgmt_class >= IB_VENDOR_RANGE2_START_CLASS &&
      mgmt_class <= IB_VENDOR_RANGE2_END_CLASS))
  return 1;

 switch (mgmt_class) {
 case 129:
 case 128:
  return 1;
 case 130:
  return 2;
 case 131:
  return 1;
 case 132:
  return 1;
 case 133:
  return 2;
 case 134:
  return 1;
 }

 return 0;
}
