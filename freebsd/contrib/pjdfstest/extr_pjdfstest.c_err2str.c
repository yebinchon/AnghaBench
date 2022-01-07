
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errnum ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
err2str(int error)
{
 static char errnum[8];

 switch (error) {

 case 151:
  return ("EPERM");


 case 169:
  return ("ENOENT");


 case 134:
  return ("ESRCH");


 case 188:
  return ("EINTR");


 case 186:
  return ("EIO");


 case 154:
  return ("ENXIO");


 case 219:
  return ("E2BIG");


 case 168:
  return ("ENOEXEC");


 case 211:
  return ("EBADF");


 case 206:
  return ("ECHILD");


 case 202:
  return ("EDEADLK");


 case 165:
  return ("ENOMEM");


 case 218:
  return ("EACCES");


 case 196:
  return ("EFAULT");


 case 160:
  return ("ENOTBLK");


 case 208:
  return ("EBUSY");


 case 197:
  return ("EEXIST");


 case 128:
  return ("EXDEV");


 case 170:
  return ("ENODEV");


 case 158:
  return ("ENOTDIR");


 case 184:
  return ("EISDIR");


 case 187:
  return ("EINVAL");


 case 173:
  return ("ENFILE");


 case 182:
  return ("EMFILE");


 case 155:
  return ("ENOTTY");


 case 130:
  return ("ETXTBSY");


 case 195:
  return ("EFBIG");


 case 162:
  return ("ENOSPC");


 case 135:
  return ("ESPIPE");


 case 139:
  return ("EROFS");


 case 181:
  return ("EMLINK");


 case 149:
  return ("EPIPE");


 case 200:
  return ("EDOM");


 case 141:
  return ("ERANGE");


 case 214:
  return ("EAGAIN");


 case 189:
  return ("EINPROGRESS");


 case 213:
  return ("EALREADY");


 case 156:
  return ("ENOTSOCK");


 case 201:
  return ("EDESTADDRREQ");


 case 180:
  return ("EMSGSIZE");


 case 142:
  return ("EPROTOTYPE");


 case 163:
  return ("ENOPROTOOPT");


 case 143:
  return ("EPROTONOSUPPORT");


 case 136:
  return ("ESOCKTNOSUPPORT");


 case 153:
  return ("EOPNOTSUPP");


 case 150:
  return ("EPFNOSUPPORT");


 case 215:
  return ("EAFNOSUPPORT");


 case 217:
  return ("EADDRINUSE");


 case 216:
  return ("EADDRNOTAVAIL");


 case 176:
  return ("ENETDOWN");


 case 174:
  return ("ENETUNREACH");


 case 175:
  return ("ENETRESET");


 case 205:
  return ("ECONNABORTED");


 case 203:
  return ("ECONNRESET");


 case 171:
  return ("ENOBUFS");


 case 185:
  return ("EISCONN");


 case 159:
  return ("ENOTCONN");


 case 137:
  return ("ESHUTDOWN");


 case 131:
  return ("ETOOMANYREFS");


 case 132:
  return ("ETIMEDOUT");


 case 204:
  return ("ECONNREFUSED");


 case 183:
  return ("ELOOP");


 case 178:
  return ("ENAMETOOLONG");


 case 193:
  return ("EHOSTDOWN");


 case 192:
  return ("EHOSTUNREACH");


 case 157:
  return ("ENOTEMPTY");


 case 148:
  return ("EPROCLIM");


 case 129:
  return ("EUSERS");


 case 198:
  return ("EDQUOT");


 case 133:
  return ("ESTALE");


 case 140:
  return ("EREMOTE");


 case 209:
  return ("EBADRPC");


 case 138:
  return ("ERPCMISMATCH");


 case 145:
  return ("EPROGUNAVAIL");


 case 146:
  return ("EPROGMISMATCH");


 case 147:
  return ("EPROCUNAVAIL");


 case 167:
  return ("ENOLCK");


 case 161:
  return ("ENOSYS");


 case 194:
  return ("EFTYPE");


 case 212:
  return ("EAUTH");


 case 177:
  return ("ENEEDAUTH");


 case 191:
  return ("EIDRM");


 case 164:
  return ("ENOMSG");


 case 152:
  return ("EOVERFLOW");


 case 207:
  return ("ECANCELED");


 case 190:
  return ("EILSEQ");


 case 172:
  return ("ENOATTR");


 case 199:
  return ("EDOOFUS");


 case 210:
  return ("EBADMSG");


 case 179:
  return ("EMULTIHOP");


 case 166:
  return ("ENOLINK");


 case 144:
  return ("EPROTO");

 default:
  snprintf(errnum, sizeof(errnum), "%d", error);
  return (errnum);
 }
}
