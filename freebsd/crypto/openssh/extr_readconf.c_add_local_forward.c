
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Forward {int connect_path; int connect_port; int connect_host; int listen_path; int listen_port; int listen_host; } ;
struct TYPE_3__ {int num_local_forwards; struct Forward* local_forwards; } ;
typedef TYPE_1__ Options ;


 scalar_t__ forward_equals (struct Forward const*,struct Forward*) ;
 struct Forward* xreallocarray (struct Forward*,int,int) ;

void
add_local_forward(Options *options, const struct Forward *newfwd)
{
 struct Forward *fwd;
 int i, ipport_reserved;


 for (i = 0; i < options->num_local_forwards; i++) {
  if (forward_equals(newfwd, options->local_forwards + i))
   return;
 }
 options->local_forwards = xreallocarray(options->local_forwards,
     options->num_local_forwards + 1,
     sizeof(*options->local_forwards));
 fwd = &options->local_forwards[options->num_local_forwards++];

 fwd->listen_host = newfwd->listen_host;
 fwd->listen_port = newfwd->listen_port;
 fwd->listen_path = newfwd->listen_path;
 fwd->connect_host = newfwd->connect_host;
 fwd->connect_port = newfwd->connect_port;
 fwd->connect_path = newfwd->connect_path;
}
