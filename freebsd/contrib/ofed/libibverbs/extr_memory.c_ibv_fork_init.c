
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ refcnt; int end; scalar_t__ start; int color; int * right; int * left; int * parent; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int IBV_BLACK ;
 int MADV_DOFORK ;
 int MADV_DONTFORK ;
 int UINTPTR_MAX ;
 int _SC_PAGESIZE ;
 int errno ;
 int free (void*) ;
 unsigned long get_page_size (void*) ;
 scalar_t__ getenv (char*) ;
 int huge_page_enabled ;
 scalar_t__ madvise (void*,unsigned long,int ) ;
 TYPE_1__* malloc (int) ;
 TYPE_1__* mm_root ;
 unsigned long page_size ;
 scalar_t__ posix_memalign (void**,unsigned long,unsigned long) ;
 unsigned long sysconf (int ) ;
 scalar_t__ too_late ;

int ibv_fork_init(void)
{
 void *tmp, *tmp_aligned;
 int ret;
 unsigned long size;

 if (getenv("RDMAV_HUGEPAGES_SAFE"))
  huge_page_enabled = 1;

 if (mm_root)
  return 0;

 if (too_late)
  return EINVAL;

 page_size = sysconf(_SC_PAGESIZE);
 if (page_size < 0)
  return errno;

 if (posix_memalign(&tmp, page_size, page_size))
  return ENOMEM;

 if (huge_page_enabled) {
  size = get_page_size(tmp);
  tmp_aligned = (void *) ((uintptr_t) tmp & ~(size - 1));
 } else {
  size = page_size;
  tmp_aligned = tmp;
 }

 ret = madvise(tmp_aligned, size, MADV_DONTFORK) ||
       madvise(tmp_aligned, size, MADV_DOFORK);

 free(tmp);

 if (ret)
  return ENOSYS;

 mm_root = malloc(sizeof *mm_root);
 if (!mm_root)
  return ENOMEM;

 mm_root->parent = ((void*)0);
 mm_root->left = ((void*)0);
 mm_root->right = ((void*)0);
 mm_root->color = IBV_BLACK;
 mm_root->start = 0;
 mm_root->end = UINTPTR_MAX;
 mm_root->refcnt = 0;

 return 0;
}
