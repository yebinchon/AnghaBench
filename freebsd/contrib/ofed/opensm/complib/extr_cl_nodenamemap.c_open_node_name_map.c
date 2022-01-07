
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int nn_map_t ;


 scalar_t__ EIO ;
 char* HAVE_DEFAULT_NODENAME_MAP ;
 int PARSE_NODE_MAP_BUFLEN ;
 int cl_qmap_init (int *) ;
 int close_node_name_map (int *) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char const*,...) ;
 int * malloc (int) ;
 int map_name ;
 int memset (char*,char,int) ;
 scalar_t__ parse_node_map_wrap (char const*,int ,int *,char*,int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 char* strerror (scalar_t__) ;

nn_map_t *open_node_name_map(const char *node_name_map)
{
 nn_map_t *map;
 char linebuf[PARSE_NODE_MAP_BUFLEN + 1];

 if (!node_name_map) {






  return ((void*)0);

 }

 map = malloc(sizeof(*map));
 if (!map)
  return ((void*)0);
 cl_qmap_init(map);

 memset(linebuf, '\0', PARSE_NODE_MAP_BUFLEN + 1);
 if (parse_node_map_wrap(node_name_map, map_name, map,
    linebuf, PARSE_NODE_MAP_BUFLEN)) {
  if (errno == EIO) {
   fprintf(stderr,
    "WARNING failed to parse node name map "
    "\"%s\"\n",
    node_name_map);
   fprintf(stderr,
    "WARNING failed line: \"%s\"\n",
    linebuf);
  }
  else
   fprintf(stderr,
    "WARNING failed to open node name map "
    "\"%s\" (%s)\n",
    node_name_map, strerror(errno));
  close_node_name_map(map);
  return ((void*)0);
 }

 return map;
}
