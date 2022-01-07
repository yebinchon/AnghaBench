
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * openssl_content_type(int content_type)
{
 switch (content_type) {
 case 20:
  return "change cipher spec";
 case 21:
  return "alert";
 case 22:
  return "handshake";
 case 23:
  return "application data";
 case 24:
  return "heartbeat";
 case 256:
  return "TLS header info";
 case 257:
  return "inner content type";
 default:
  return "?";
 }
}
