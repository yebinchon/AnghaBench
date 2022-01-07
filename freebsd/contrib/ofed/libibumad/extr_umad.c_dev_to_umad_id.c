
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG (char*,char const*,unsigned int,int) ;
 int UMAD_CA_NAME_LEN ;
 int UMAD_MAX_PORTS ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ umad_id_to_dev (int,char*,unsigned int*) ;

__attribute__((used)) static int dev_to_umad_id(const char *dev, unsigned port)
{
 char umad_dev[UMAD_CA_NAME_LEN];
 unsigned umad_port;
 int id;

 for (id = 0; id < UMAD_MAX_PORTS; id++) {
  if (umad_id_to_dev(id, umad_dev, &umad_port) < 0)
   continue;
  if (strncmp(dev, umad_dev, UMAD_CA_NAME_LEN))
   continue;
  if (port != umad_port)
   continue;

  DEBUG("mapped %s %d to %d", dev, port, id);
  return id;
 }

 return -1;
}
