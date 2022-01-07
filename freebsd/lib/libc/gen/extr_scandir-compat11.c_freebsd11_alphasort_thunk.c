
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct freebsd11_dirent freebsd11_dirent ;



__attribute__((used)) static int
freebsd11_alphasort_thunk(void *thunk, const void *p1, const void *p2)
{
 int (*dc)(const struct freebsd11_dirent **, const struct
     freebsd11_dirent **);

 dc = *(int (**)(const struct freebsd11_dirent **,
     const struct freebsd11_dirent **))thunk;
 return (dc((const struct freebsd11_dirent **)p1,
     (const struct freebsd11_dirent **)p2));
}
