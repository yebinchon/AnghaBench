
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct dirent dirent ;



__attribute__((used)) static int
alphasort_thunk(void *thunk, const void *p1, const void *p2)
{
 int (*dc)(const struct dirent **, const struct dirent **);

 dc = *(int (**)(const struct dirent **, const struct dirent **))thunk;
 return (dc((const struct dirent **)p1, (const struct dirent **)p2));
}
