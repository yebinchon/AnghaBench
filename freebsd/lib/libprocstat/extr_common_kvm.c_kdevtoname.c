
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int si_name; } ;
typedef int si ;
typedef int kvm_t ;


 scalar_t__ SPECNAMELEN ;
 int assert (char*) ;
 int kvm_read_all (int *,unsigned long,struct cdev*,int) ;
 int strlcpy (char*,int ,scalar_t__) ;

int
kdevtoname(kvm_t *kd, struct cdev *dev, char *buf)
{
 struct cdev si;

 assert(buf);
 if (!kvm_read_all(kd, (unsigned long)dev, &si, sizeof(si)))
  return (1);
 strlcpy(buf, si.si_name, SPECNAMELEN + 1);
 return (0);
}
