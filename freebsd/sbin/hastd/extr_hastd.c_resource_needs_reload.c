
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hast_resource {scalar_t__ hr_role; scalar_t__ hr_replication; scalar_t__ hr_checksum; scalar_t__ hr_compression; scalar_t__ hr_timeout; scalar_t__ hr_metaflush; int hr_exec; int hr_sourceaddr; int hr_remoteaddr; int hr_localpath; int hr_provname; int hr_name; } ;


 scalar_t__ HAST_ROLE_PRIMARY ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool
resource_needs_reload(const struct hast_resource *res0,
    const struct hast_resource *res1)
{

 PJDLOG_ASSERT(strcmp(res0->hr_name, res1->hr_name) == 0);
 PJDLOG_ASSERT(strcmp(res0->hr_provname, res1->hr_provname) == 0);
 PJDLOG_ASSERT(strcmp(res0->hr_localpath, res1->hr_localpath) == 0);

 if (res0->hr_role != HAST_ROLE_PRIMARY)
  return (0);

 if (strcmp(res0->hr_remoteaddr, res1->hr_remoteaddr) != 0)
  return (1);
 if (strcmp(res0->hr_sourceaddr, res1->hr_sourceaddr) != 0)
  return (1);
 if (res0->hr_replication != res1->hr_replication)
  return (1);
 if (res0->hr_checksum != res1->hr_checksum)
  return (1);
 if (res0->hr_compression != res1->hr_compression)
  return (1);
 if (res0->hr_timeout != res1->hr_timeout)
  return (1);
 if (strcmp(res0->hr_exec, res1->hr_exec) != 0)
  return (1);
 if (res0->hr_metaflush != res1->hr_metaflush)
  return (1);
 return (0);
}
