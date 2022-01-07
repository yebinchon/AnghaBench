
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int kvm_t ;


 int MEMSTAT_ERROR_KVM ;
 int MEMSTAT_ERROR_KVM_SHORTREAD ;
 scalar_t__ kvm_read (int *,unsigned long,char*,int) ;

__attribute__((used)) static int
kread_string(kvm_t *kvm, const void *kvm_pointer, char *buffer, int buflen)
{
 ssize_t ret;
 int i;

 for (i = 0; i < buflen; i++) {
  ret = kvm_read(kvm, (unsigned long)kvm_pointer + i,
      &(buffer[i]), sizeof(char));
  if (ret < 0)
   return (MEMSTAT_ERROR_KVM);
  if ((size_t)ret != sizeof(char))
   return (MEMSTAT_ERROR_KVM_SHORTREAD);
  if (buffer[i] == '\0')
   return (0);
 }

 buffer[i-1] = '\0';
 return (0);
}
