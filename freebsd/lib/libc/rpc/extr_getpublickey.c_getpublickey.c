
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __getpublickey_LOCAL (char const*,char*) ;
 int __getpublickey_real (char const*,char*) ;

int getpublickey(const char *netname, char *publickey)
{
 if (__getpublickey_LOCAL != ((void*)0))
  return(__getpublickey_LOCAL(netname, publickey));
 else
  return(__getpublickey_real(netname, publickey));
}
