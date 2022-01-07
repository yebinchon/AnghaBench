
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum message_verbosity { ____Placeholder_message_verbosity } message_verbosity ;


 int verbosity ;

extern enum message_verbosity
message_verbosity_get(void)
{
 return verbosity;
}
