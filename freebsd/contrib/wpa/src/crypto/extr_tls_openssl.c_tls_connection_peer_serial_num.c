
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int peer_cert; } ;
typedef int ASN1_INTEGER ;


 int ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int * X509_get_serialNumber (int ) ;
 char* os_malloc (size_t) ;
 int wpa_snprintf_hex_uppercase (char*,size_t,int ,int) ;

char * tls_connection_peer_serial_num(void *tls_ctx,
          struct tls_connection *conn)
{
 ASN1_INTEGER *ser;
 char *serial_num;
 size_t len;

 if (!conn->peer_cert)
  return ((void*)0);

 ser = X509_get_serialNumber(conn->peer_cert);
 if (!ser)
  return ((void*)0);

 len = ASN1_STRING_length(ser) * 2 + 1;
 serial_num = os_malloc(len);
 if (!serial_num)
  return ((void*)0);
 wpa_snprintf_hex_uppercase(serial_num, len,
       ASN1_STRING_get0_data(ser),
       ASN1_STRING_length(ser));
 return serial_num;
}
