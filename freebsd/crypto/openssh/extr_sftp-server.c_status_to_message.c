
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 size_t MINIMUM (int ,int ) ;
 int SSH2_FX_MAX ;

__attribute__((used)) static const char *
status_to_message(u_int32_t status)
{
 const char *status_messages[] = {
  "Success",
  "End of file",
  "No such file",
  "Permission denied",
  "Failure",
  "Bad message",
  "No connection",
  "Connection lost",
  "Operation unsupported",
  "Unknown error"
 };
 return (status_messages[MINIMUM(status,SSH2_FX_MAX)]);
}
