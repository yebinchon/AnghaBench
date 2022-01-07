
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;


 int CL_ASSERT (int) ;
 int strncpy (char*,char*,int) ;
 char* strtok_r (char*,char*,char**) ;
 unsigned long strtoul (char*,int *,int ) ;
 int strtoull (char*,int *,int ) ;

__attribute__((used)) static inline int unpack_neighbor(char *p_str, uint64_t *guid,
      uint8_t *portnum)
{
 char tmp_str[24];
 char *p_num, *p_next;
 unsigned long tmp_port;

 strncpy(tmp_str, p_str, 23);
 tmp_str[23] = '\0';
 p_num = strtok_r(tmp_str, ":", &p_next);
 if (!p_num)
  return 1;
 if (guid)
  *guid = strtoull(p_num, ((void*)0), 0);

 p_num = strtok_r(((void*)0), ":", &p_next);
 if (!p_num)
  return 1;
 if (portnum) {
  tmp_port = strtoul(p_num, ((void*)0), 0);
  CL_ASSERT(tmp_port < 0x100);
  *portnum = (uint8_t) tmp_port;
 }

 return 0;
}
