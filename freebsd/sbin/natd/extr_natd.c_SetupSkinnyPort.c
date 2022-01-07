
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LibAliasSetSkinnyPort (int ,unsigned int) ;
 int errx (int,char*) ;
 int mla ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static void
SetupSkinnyPort(const char *strValue)
{
 unsigned int port;

 if (sscanf(strValue, "%u", &port) != 1)
  errx(1, "skinny_port: port parameter required");

 LibAliasSetSkinnyPort(mla, port);
}
