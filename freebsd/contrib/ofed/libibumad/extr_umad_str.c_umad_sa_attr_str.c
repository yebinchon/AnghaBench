
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;
 int be16toh (int ) ;
 char const* umad_common_attr_str (int ) ;

__attribute__((used)) static const char * umad_sa_attr_str(__be16 attr_id)
{
 switch(be16toh(attr_id)) {
  case 140:
   return ("NodeRecord");
  case 136:
   return ("PortInfoRecord");
  case 132:
   return ("SLtoVLMappingTableRecord");
  case 130:
   return ("SwitchInfoRecord");
  case 146:
   return ("LinearForwardingTableRecord");
  case 135:
   return ("RandomForwardingTableRecord");
  case 143:
   return ("MulticastForwardingTableRecord");
  case 131:
   return ("SMInfoRecord");
  case 147:
   return ("InformInfoRecord");
  case 145:
   return ("LinkRecord");
  case 149:
   return ("GuidInfoRecord");
  case 133:
   return ("ServiceRecord");
  case 138:
   return ("P_KeyTableRecord");
  case 139:
   return ("PathRecord");
  case 128:
   return ("VLArbitrationTableRecord");
  case 142:
   return ("MCMemberRecord");
  case 129:
   return ("TraceRecord");
  case 141:
   return ("MultiPathRecord");
  case 134:
   return ("ServiceAssociationRecord");
  case 144:
   return ("LinkSpeedWidthPairsTableRecord");
  case 148:
   return ("HierarchyInfoRecord");
  case 150:
   return ("CableInfoRecord");
  case 137:
   return ("PortInfoExtendedRecord");
  default:
   return (umad_common_attr_str(attr_id));
 }
 return ("<unknown>");
}
