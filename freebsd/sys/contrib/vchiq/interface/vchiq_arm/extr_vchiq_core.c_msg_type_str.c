
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *msg_type_str(unsigned int msg_type)
{
 switch (msg_type) {
 case 133: return "PADDING";
 case 137: return "CONNECT";
 case 135: return "OPEN";
 case 134: return "OPENACK";
 case 138: return "CLOSE";
 case 136: return "DATA";
 case 142: return "BULK_RX";
 case 140: return "BULK_TX";
 case 141: return "BULK_RX_DONE";
 case 139: return "BULK_TX_DONE";
 case 132: return "PAUSE";
 case 128: return "RESUME";
 case 130: return "REMOTE_USE";
 case 131: return "REMOTE_RELEASE";
 case 129: return "REMOTE_USE_ACTIVE";
 }
 return "???";
}
