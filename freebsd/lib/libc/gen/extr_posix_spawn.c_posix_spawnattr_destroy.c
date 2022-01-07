
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int posix_spawnattr_t ;


 int free (int ) ;

int
posix_spawnattr_destroy(posix_spawnattr_t *sa)
{
 free(*sa);
 return (0);
}
