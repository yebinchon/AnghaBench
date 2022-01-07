
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ distance; scalar_t__ state; scalar_t__ guid; int heap_id; TYPE_4__* used_link; TYPE_4__* links; scalar_t__ hops; int lid; } ;
typedef TYPE_1__ vertex_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_15__ {int p_log; } ;
typedef TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_16__ {int * p_node; TYPE_7__* p_physp; } ;
typedef TYPE_3__ osm_port_t ;
typedef int osm_node_t ;
struct TYPE_17__ {scalar_t__ guid; int weight; size_t to; size_t from; struct TYPE_17__* next; int to_port; int from_port; } ;
typedef TYPE_4__ link_t ;
typedef int binary_heap_t ;
struct TYPE_18__ {int port_num; } ;


 scalar_t__ DISCOVERED ;
 scalar_t__ IB_NODE_TYPE_CA ;
 scalar_t__ IB_NODE_TYPE_SWITCH ;
 scalar_t__ INF ;
 int OSM_LOG (int ,int ,char*) ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_EXIT (int ) ;
 scalar_t__ UNDISCOVERED ;
 void* cl_ntoh64 (int ) ;
 int free (TYPE_4__*) ;
 int heap_create (TYPE_1__*,size_t,int **) ;
 int heap_free (int *) ;
 TYPE_1__* heap_getmin (int *) ;
 int heap_heapify (int *,int ) ;
 scalar_t__ malloc (int) ;
 scalar_t__ osm_link_is_healthy (TYPE_7__*) ;
 int osm_node_get_node_guid (int *) ;
 int * osm_node_get_remote_node (int *,int ,int *) ;
 scalar_t__ osm_node_get_type (int *) ;
 int set_default_link (TYPE_4__*) ;
 int set_default_vertex (TYPE_1__*) ;

__attribute__((used)) static int dijkstra(osm_ucast_mgr_t * p_mgr, vertex_t * adj_list,
      uint32_t adj_list_size, osm_port_t * port, uint16_t lid)
{
 uint32_t i = 0, j = 0, index = 0;
 osm_node_t *remote_node = ((void*)0);
 uint8_t remote_port = 0;
 vertex_t *current = ((void*)0);
 link_t *link = ((void*)0);
 uint64_t guid = 0;
 binary_heap_t *heap = ((void*)0);
 int err = 0;

 OSM_LOG_ENTER(p_mgr->p_log);


 for (i = 1; i < adj_list_size; i++) {
  adj_list[i].hops = 0;
  adj_list[i].used_link = ((void*)0);
  adj_list[i].distance = INF;
  adj_list[i].state = UNDISCOVERED;
 }


 if (osm_node_get_type(port->p_node) == IB_NODE_TYPE_CA) {

  link = adj_list[0].links;

  set_default_vertex(&adj_list[0]);
  adj_list[0].guid =
      cl_ntoh64(osm_node_get_node_guid(port->p_node));
  adj_list[0].lid = lid;
  index = 0;

  adj_list[0].links = link;




  if (port->p_physp && osm_link_is_healthy(port->p_physp)) {
   remote_node =
       osm_node_get_remote_node(port->p_node,
           port->p_physp->port_num,
           &remote_port);

   if (remote_node
       && (osm_node_get_type(remote_node) ==
    IB_NODE_TYPE_SWITCH)) {
    if (!(adj_list[0].links)) {
     adj_list[0].links =
         (link_t *) malloc(sizeof(link_t));
     if (!(adj_list[0].links)) {
      OSM_LOG(p_mgr->p_log,
       OSM_LOG_ERROR,
       "ERR AD07: cannot allocate memory for a link\n");
      return 1;
     }
    }
    set_default_link(adj_list[0].links);
    adj_list[0].links->guid =
        cl_ntoh64(osm_node_get_node_guid
           (remote_node));
    adj_list[0].links->from_port =
        port->p_physp->port_num;
    adj_list[0].links->to_port = remote_port;
    adj_list[0].links->weight = 1;
    for (j = 1; j < adj_list_size; j++) {
     if (adj_list[0].links->guid ==
         adj_list[j].guid) {
      adj_list[0].links->to = j;
      break;
     }
    }
   }
  } else {

   OSM_LOG(p_mgr->p_log, OSM_LOG_ERROR,
    "ERR AD0B: unsupported network state (CA with"
    " unhealthy link state discovered; should have"
    " been filtered out before already; gracefully"
    " shutdown this routing engine)\n");
   return 1;
  }

 } else {

  if (adj_list[0].links) {
   free(adj_list[0].links);
   set_default_vertex(&adj_list[0]);
  }

  guid = cl_ntoh64(osm_node_get_node_guid(port->p_node));
  for (i = 1; i < adj_list_size; i++) {
   if (guid == adj_list[i].guid) {
    index = i;
    break;
   }
  }
 }


 adj_list[index].distance = 0;
 adj_list[index].state = DISCOVERED;
 adj_list[index].hops = 0;


 if (osm_node_get_type(port->p_node) == IB_NODE_TYPE_CA)
  err = heap_create(adj_list, adj_list_size, &heap);
 else
  err = heap_create(&adj_list[1], adj_list_size - 1, &heap);
 if (err) {
  OSM_LOG(p_mgr->p_log, OSM_LOG_ERROR,
   "ERR AD09: cannot allocate memory for heap or heap->node in heap_create(...)\n");
  return err;
 }

 current = heap_getmin(heap);
 while (current) {
  current->state = DISCOVERED;
  if (current->used_link)
   current->hops =
       adj_list[current->used_link->from].hops + 1;


  for (link = current->links; link != ((void*)0); link = link->next) {
   if ((adj_list[link->to].state != DISCOVERED)
       && (current->distance + link->weight <
    adj_list[link->to].distance)) {
    adj_list[link->to].used_link = link;
    adj_list[link->to].distance =
        current->distance + link->weight;
    heap_heapify(heap, adj_list[link->to].heap_id);
   }
  }

  current = heap_getmin(heap);
 }


 heap_free(heap);
 heap = ((void*)0);

 OSM_LOG_EXIT(p_mgr->p_log);
 return 0;
}
