
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int isspace (int ) ;

__attribute__((used)) static int
parsefail(
 const char * cp,
 const char * ep)
{
 return (cp == ep)
     || (*ep && *ep != '#' && !isspace((u_char)*ep));
}
