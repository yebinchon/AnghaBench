
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int pcell_t ;


 int ENOMEM ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 size_t OF_getencprop (int ,char const*,int *,size_t) ;
 size_t OF_getproplen (int ,char const*) ;
 int * malloc (size_t,int ,int ) ;

__attribute__((used)) static int
read_keymap(phandle_t node, const char *prop, pcell_t **keymap, size_t *len)
{

 if ((*len = OF_getproplen(node, prop)) <= 0) {
  return (ENXIO);
 }
 if ((*keymap = malloc(*len, M_DEVBUF, M_NOWAIT)) == ((void*)0)) {
  return (ENOMEM);
 }
 if (OF_getencprop(node, prop, *keymap, *len) != *len) {
  return (ENXIO);
 }
 return (0);
}
