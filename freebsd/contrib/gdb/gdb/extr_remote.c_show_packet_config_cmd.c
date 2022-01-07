
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_config {int support; int detect; int title; int name; } ;
 int printf_filtered (char*,int ,int ,char*) ;

__attribute__((used)) static void
show_packet_config_cmd (struct packet_config *config)
{
  char *support = "internal-error";
  switch (config->support)
    {
    case 129:
      support = "enabled";
      break;
    case 130:
      support = "disabled";
      break;
    case 128:
      support = "unknown";
      break;
    }
  switch (config->detect)
    {
    case 133:
      printf_filtered ("Support for remote protocol `%s' (%s) packet is auto-detected, currently %s.\n",
         config->name, config->title, support);
      break;
    case 131:
    case 132:
      printf_filtered ("Support for remote protocol `%s' (%s) packet is currently %s.\n",
         config->name, config->title, support);
      break;
    }
}
