
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip {int dummy; } ;


 char* FormatPacket (struct ip*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void PrintPacket (struct ip* ip)
{
 printf ("%s", FormatPacket (ip));
}
