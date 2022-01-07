
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct tlsv1_client {int flags; } ;


 int TLS_CONN_DISABLE_TLSv1_0 ;
 int TLS_CONN_DISABLE_TLSv1_1 ;
 int TLS_CONN_DISABLE_TLSv1_2 ;
 scalar_t__ TLS_VERSION_1 ;
 scalar_t__ TLS_VERSION_1_1 ;
 scalar_t__ TLS_VERSION_1_2 ;

__attribute__((used)) static int tls_version_disabled(struct tlsv1_client *conn, u16 ver)
{
 return (((conn->flags & TLS_CONN_DISABLE_TLSv1_0) &&
   ver == TLS_VERSION_1) ||
  ((conn->flags & TLS_CONN_DISABLE_TLSv1_1) &&
   ver == TLS_VERSION_1_1) ||
  ((conn->flags & TLS_CONN_DISABLE_TLSv1_2) &&
   ver == TLS_VERSION_1_2));
}
