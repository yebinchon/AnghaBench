
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_request {int dummy; } ;


 char* http_request_get_hdr_line (struct http_request*,char*) ;
 scalar_t__ isgraph (char) ;
 int os_strlen (char*) ;
 scalar_t__ os_strncasecmp (char*,char const*,int) ;
 char* urn_wfawlanconfig ;

__attribute__((used)) static const char * web_get_action(struct http_request *req,
       size_t *action_len)
{
 const char *match;
 int match_len;
 char *b;
 char *action;

 *action_len = 0;

 b = http_request_get_hdr_line(req, "SOAPAction:");
 if (b == ((void*)0))
  return ((void*)0);
 if (*b == '"')
  b++;
 else
  return ((void*)0);
 match = urn_wfawlanconfig;
 match_len = os_strlen(urn_wfawlanconfig) - 1;
 if (os_strncasecmp(b, match, match_len))
  return ((void*)0);
 b += match_len;

 while (isgraph(*b) && *b != '#')
  b++;
 if (*b != '#')
  return ((void*)0);
 b++;

 action = b;
 while (isgraph(*b) && *b != '"')
  b++;
 if (*b != '"')
  return ((void*)0);
 *action_len = b - action;
 return action;
}
