
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 char const* strerror (int ) ;

const char *
ssh_err(int n)
{
 switch (n) {
 case 130:
  return "success";
 case 168:
  return "unexpected internal error";
 case 182:
  return "memory allocation failed";
 case 147:
  return "incomplete message";
 case 166:
  return "invalid format";
 case 181:
  return "bignum is negative";
 case 131:
  return "string is too large";
 case 180:
  return "bignum is too large";
 case 173:
  return "elliptic curve point is too large";
 case 145:
  return "insufficient buffer space";
 case 167:
  return "invalid argument";
 case 164:
  return "key bits do not match";
 case 172:
  return "invalid elliptic curve";
 case 154:
  return "key type does not match";
 case 153:
  return "unknown or unsupported key type";
 case 171:
  return "elliptic curve does not match";
 case 170:
  return "plain key provided where certificate required";
 case 158:
  return "key lacks certificate data";
 case 160:
  return "unknown/unsupported certificate type";
 case 162:
  return "invalid certificate signing key";
 case 159:
  return "invalid elliptic curve value";
 case 133:
  return "incorrect signature";
 case 149:
  return "error in libcrypto";
 case 128:
  return "unexpected bytes remain after decoding";
 case 129:
  return strerror(errno);
 case 163:
  return "invalid certificate";
 case 186:
  return "communication with agent failed";
 case 185:
  return "agent refused operation";
 case 175:
  return "DH GEX group out of range";
 case 174:
  return "disconnected";
 case 148:
  return "message authentication code incorrect";
 case 144:
  return "no matching cipher found";
 case 139:
  return "no matching MAC found";
 case 143:
  return "no matching compression method found";
 case 140:
  return "no matching key exchange method found";
 case 142:
  return "no matching host key type found";
 case 134:
  return "protocol version mismatch";
 case 138:
  return "could not read protocol version";
 case 141:
  return "could not load host key";
 case 146:
  return "rekeying not supported by peer";
 case 136:
  return "passphrase is too short (minimum five characters)";
 case 169:
  return "file changed while reading";
 case 152:
  return "key encrypted using unsupported cipher";
 case 151:
  return "incorrect passphrase supplied to decrypt private key";
 case 165:
  return "bad permissions";
 case 161:
  return "certificate does not match key";
 case 156:
  return "key not found";
 case 184:
  return "agent not present";
 case 183:
  return "agent contains no identities";
 case 179:
  return "internal error: buffer is read-only";
 case 150:
  return "KRL file has invalid magic number";
 case 155:
  return "Key is revoked";
 case 178:
  return "Connection closed";
 case 176:
  return "Connection timed out";
 case 177:
  return "Connection corrupted";
 case 135:
  return "Protocol error";
 case 157:
  return "Invalid key length";
 case 137:
  return "number is too large";
 case 132:
  return "signature algorithm not supported";
 default:
  return "unknown error";
 }
}
