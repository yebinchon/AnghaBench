
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bpf_u_int32 ;
 int pcap_snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static char *
dlstrerror(char *errbuf, size_t errbufsize, bpf_u_int32 dl_errno)
{
 switch (dl_errno) {

 case 155:
  return ("Improper permissions for request");

 case 154:
  return ("DLSAP addr in improper format or invalid");

 case 153:
  return ("Seq number not from outstand DL_CONN_IND");

 case 152:
  return ("User data exceeded provider limit");

 case 151:
  return ("Specified PPA (device unit) was invalid");


 case 150:
  return ("Primitive received not known by provider");

 case 149:
  return ("QOS parameters contained invalid values");

 case 148:
  return ("QOS structure type is unknown/unsupported");

 case 147:
  return ("Bad LSAP selector");

 case 146:
  return ("Token used not an active stream");

 case 145:
  return ("Attempted second bind with dl_max_conind");

 case 143:
  return ("Physical link initialization failed");

 case 142:
  return ("Provider couldn't allocate alternate address");

 case 138:
  return ("Physical link not initialized");

 case 135:
  return ("Primitive issued in improper state");

 case 133:
  return ("UNIX system error occurred");

 case 129:
  return ("Requested service not supplied by provider");

 case 130:
  return ("Previous data unit could not be delivered");

 case 137:
  return ("Primitive is known but not supported");

 case 131:
  return ("Limit exceeded");

 case 140:
  return ("Promiscuous mode not enabled");

 case 144:
  return ("Other streams for PPA in post-attached");

 case 141:
  return ("Automatic handling XID&TEST not supported");

 case 136:
  return ("Automatic handling of XID not supported");

 case 139:
  return ("Automatic handling of TEST not supported");

 case 128:
  return ("Automatic handling of XID response");

 case 132:
  return ("Automatic handling of TEST response");

 case 134:
  return ("Pending outstanding connect indications");

 default:
  pcap_snprintf(errbuf, errbufsize, "Error %02x", dl_errno);
  return (errbuf);
 }
}
