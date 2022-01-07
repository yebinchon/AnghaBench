
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int ki_structsize; } ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_PROC ;
 int free (struct kinfo_proc*) ;
 int kinfo_proc_sort (struct kinfo_proc*,size_t) ;
 struct kinfo_proc* malloc (size_t) ;
 int nitems (int*) ;
 scalar_t__ sysctl (int*,int ,struct kinfo_proc*,size_t*,int *,int ) ;

struct kinfo_proc *
kinfo_getallproc(int *cntp)
{
 struct kinfo_proc *kipp;
 size_t len;
 int mib[3];

 mib[0] = CTL_KERN;
 mib[1] = KERN_PROC;
 mib[2] = KERN_PROC_PROC;

 len = 0;
 if (sysctl(mib, nitems(mib), ((void*)0), &len, ((void*)0), 0) < 0)
  return (((void*)0));

 kipp = malloc(len);
 if (kipp == ((void*)0))
  return (((void*)0));

 if (sysctl(mib, nitems(mib), kipp, &len, ((void*)0), 0) < 0)
  goto bad;
 if (len % sizeof(*kipp) != 0)
  goto bad;
 if (kipp->ki_structsize != sizeof(*kipp))
  goto bad;
 *cntp = len / sizeof(*kipp);
 kinfo_proc_sort(kipp, len / sizeof(*kipp));
 return (kipp);
bad:
 *cntp = 0;
 free(kipp);
 return (((void*)0));
}
