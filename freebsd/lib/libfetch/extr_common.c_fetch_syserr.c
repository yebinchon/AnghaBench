
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FETCH_ABORT ;
 int FETCH_AUTH ;
 int FETCH_DOWN ;
 int FETCH_EXISTS ;
 int FETCH_FULL ;
 int FETCH_MEMORY ;
 int FETCH_NETWORK ;
 int FETCH_OK ;
 int FETCH_TEMP ;
 int FETCH_TIMEOUT ;
 int FETCH_UNAVAIL ;
 int FETCH_UNKNOWN ;
 int MAXERRSTRING ;
 int errno ;
 int fetchLastErrCode ;
 int fetchLastErrString ;
 int snprintf (int ,int ,char*,char*) ;
 char* strerror (int) ;

void
fetch_syserr(void)
{
 switch (errno) {
 case 0:
  fetchLastErrCode = FETCH_OK;
  break;
 case 130:
 case 150:
 case 129:
 case 146:
 case 137:
  fetchLastErrCode = FETCH_AUTH;
  break;
 case 133:
 case 138:
  fetchLastErrCode = FETCH_UNAVAIL;
  break;
 case 132:
  fetchLastErrCode = FETCH_MEMORY;
  break;
 case 145:
 case 147:
  fetchLastErrCode = FETCH_TEMP;
  break;
 case 141:
  fetchLastErrCode = FETCH_EXISTS;
  break;
 case 131:
  fetchLastErrCode = FETCH_FULL;
  break;
 case 149:
 case 148:
 case 136:
 case 134:
 case 135:
 case 139:
  fetchLastErrCode = FETCH_NETWORK;
  break;
 case 144:
 case 142:
  fetchLastErrCode = FETCH_ABORT;
  break;
 case 128:
  fetchLastErrCode = FETCH_TIMEOUT;
  break;
 case 143:
 case 140:
  fetchLastErrCode = FETCH_DOWN;
  break;
 default:
  fetchLastErrCode = FETCH_UNKNOWN;
 }
 snprintf(fetchLastErrString, MAXERRSTRING, "%s", strerror(errno));
}
