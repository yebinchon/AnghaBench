
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* version_addendum; } ;


 int PROTOCOL_MAJOR_2 ;
 int PROTOCOL_MINOR_2 ;
 int SSH_VERSION ;
 scalar_t__ atomicio (int ,int,int ,scalar_t__) ;
 int chop (int ) ;
 int client_version_string ;
 int debug (char*,int ) ;
 int errno ;
 int fatal (char*,int ) ;
 TYPE_1__ options ;
 int strerror (int ) ;
 scalar_t__ strlen (int ) ;
 int vwrite ;
 int xasprintf (int *,char*,int ,int ,int ,char*,char*) ;

__attribute__((used)) static void
send_client_banner(int connection_out, int minor1)
{

 xasprintf(&client_version_string, "SSH-%d.%d-%.100s%s%s\n",
     PROTOCOL_MAJOR_2, PROTOCOL_MINOR_2, SSH_VERSION,
     *options.version_addendum == '\0' ? "" : " ",
     options.version_addendum);
 if (atomicio(vwrite, connection_out, client_version_string,
     strlen(client_version_string)) != strlen(client_version_string))
  fatal("write: %.100s", strerror(errno));
 chop(client_version_string);
 debug("Local version string %.100s", client_version_string);
}
