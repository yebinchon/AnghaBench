
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
GetWSAErrorMessage(int errval) {
 char *msg;

 switch (errval) {

 case 158:
  msg = "Interrupted system call";
  break;

 case 169:
  msg = "Bad file number";
  break;

 case 174:
  msg = "Permission denied";
  break;

 case 162:
  msg = "Bad address";
  break;

 case 157:
  msg = "Invalid argument";
  break;

 case 154:
  msg = "Too many open sockets";
  break;

 case 131:
  msg = "Operation would block";
  break;

 case 159:
  msg = "Operation now in progress";
  break;

 case 170:
  msg = "Operation already in progress";
  break;

 case 144:
  msg = "Socket operation on non-socket";
  break;

 case 165:
  msg = "Destination address required";
  break;

 case 153:
  msg = "Message too long";
  break;

 case 139:
  msg = "Protocol wrong type for socket";
  break;

 case 147:
  msg = "Bad protocol option";
  break;

 case 140:
  msg = "Protocol not supported";
  break;

 case 136:
  msg = "Socket type not supported";
  break;

 case 143:
  msg = "Operation not supported on socket";
  break;

 case 142:
  msg = "Protocol family not supported";
  break;

 case 171:
  msg = "Address family not supported";
  break;

 case 173:
  msg = "Address already in use";
  break;

 case 172:
  msg = "Can't assign requested address";
  break;

 case 151:
  msg = "Network is down";
  break;

 case 149:
  msg = "Network is unreachable";
  break;

 case 150:
  msg = "Net connection reset";
  break;

 case 168:
  msg = "Software caused connection abort";
  break;

 case 166:
  msg = "Connection reset by peer";
  break;

 case 148:
  msg = "No buffer space available";
  break;

 case 156:
  msg = "Socket is already connected";
  break;

 case 146:
  msg = "Socket is not connected";
  break;

 case 137:
  msg = "Can't send after socket shutdown";
  break;

 case 133:
  msg = "Too many references: can't splice";
  break;

 case 134:
  msg = "Connection timed out";
  break;

 case 167:
  msg = "Connection refused";
  break;

 case 155:
  msg = "Too many levels of symbolic links";
  break;

 case 152:
  msg = "File name too long";
  break;

 case 161:
  msg = "Host is down";
  break;

 case 160:
  msg = "No route to host";
  break;

 case 145:
  msg = "Directory not empty";
  break;

 case 141:
  msg = "Too many processes";
  break;

 case 132:
  msg = "Too many users";
  break;

 case 163:
  msg = "Disc quota exceeded";
  break;

 case 135:
  msg = "Stale NFS file handle";
  break;

 case 138:
  msg = "Too many levels of remote in path";
  break;

 case 129:
  msg = "Network system is unavailable";
  break;

 case 128:
  msg = "Winsock version out of range";
  break;

 case 130:
  msg = "WSAStartup not yet called";
  break;

 case 164:
  msg = "Graceful shutdown in progress";
  break;
 default:
  msg = ((void*)0);
  break;
 }
 return (msg);
}
