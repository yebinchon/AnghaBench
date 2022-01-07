
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct torus_context {TYPE_1__* osm; } ;
struct TYPE_3__ {int log; } ;
typedef TYPE_1__ osm_opensm_t ;


 int OSM_LOG (int *,int ,char*,int ) ;
 int OSM_LOG_ERROR ;
 struct torus_context* calloc (int,int) ;
 int errno ;
 int strerror (int ) ;

__attribute__((used)) static
struct torus_context *torus_context_create(osm_opensm_t *osm)
{
 struct torus_context *ctx;

 ctx = calloc(1, sizeof(*ctx));
 if (ctx)
  ctx->osm = osm;
 else
  OSM_LOG(&osm->log, OSM_LOG_ERROR,
   "ERR 4E01: calloc: %s\n", strerror(errno));

 return ctx;
}
