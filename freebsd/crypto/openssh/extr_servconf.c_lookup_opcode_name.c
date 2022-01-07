
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {char const* name; scalar_t__ opcode; } ;
typedef scalar_t__ ServerOpCodes ;


 TYPE_1__* keywords ;

__attribute__((used)) static const char *
lookup_opcode_name(ServerOpCodes code)
{
 u_int i;

 for (i = 0; keywords[i].name != ((void*)0); i++)
  if (keywords[i].opcode == code)
   return(keywords[i].name);
 return "UNKNOWN";
}
