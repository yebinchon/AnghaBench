
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_EXCESSIVE ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int MSG_WARNING ;
 scalar_t__ os_strcasecmp (char const*,char*) ;

int str_to_debug_level(const char *s)
{
 if (os_strcasecmp(s, "EXCESSIVE") == 0)
  return MSG_EXCESSIVE;
 if (os_strcasecmp(s, "MSGDUMP") == 0)
  return MSG_MSGDUMP;
 if (os_strcasecmp(s, "DEBUG") == 0)
  return MSG_DEBUG;
 if (os_strcasecmp(s, "INFO") == 0)
  return MSG_INFO;
 if (os_strcasecmp(s, "WARNING") == 0)
  return MSG_WARNING;
 if (os_strcasecmp(s, "ERROR") == 0)
  return MSG_ERROR;
 return -1;
}
