
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void *
vector_ref(unsigned int i, void *vec, unsigned int count, size_t esize)
{
 if (i < count)
  return (void *)((uintptr_t)vec + (i * esize));
 else
  return (((void*)0));
}
