
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
evdns_err_to_string(int err)
{
    switch (err) {
 case 136: return "no error";
 case 138: return "misformatted query";
 case 132: return "server failed";
 case 135: return "name does not exist";
 case 134: return "query not implemented";
 case 133: return "refused";

 case 129: return "reply truncated or ill-formed";
 case 128: return "unknown";
 case 130: return "request timed out";
 case 131: return "dns subsystem shut down";
 case 139: return "dns request canceled";
 case 137: return "no records in the reply";
 default: return "[Unknown error code]";
    }
}
