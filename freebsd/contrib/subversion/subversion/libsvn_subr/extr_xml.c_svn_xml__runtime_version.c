
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* XML_ExpatVersion () ;
 int strncmp (char const*,char*,int) ;

const char *
svn_xml__runtime_version(void)
{
  const char *expat_version = XML_ExpatVersion();

  if (!strncmp(expat_version, "expat_", 6))
    expat_version += 6;

  return expat_version;
}
