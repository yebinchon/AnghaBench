
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Forward {scalar_t__ allocated_port; int handle; int connect_path; int connect_port; int connect_host; int listen_path; int listen_port; int listen_host; } ;
struct TYPE_3__ {int num_remote_forwards; struct Forward* remote_forwards; } ;
typedef TYPE_1__ Options ;


 scalar_t__ forward_equals (struct Forward const*,struct Forward*) ;
 struct Forward* xreallocarray (struct Forward*,int,int) ;

void
add_remote_forward(Options *options, const struct Forward *newfwd)
{
 struct Forward *fwd;
 int i;


 for (i = 0; i < options->num_remote_forwards; i++) {
  if (forward_equals(newfwd, options->remote_forwards + i))
   return;
 }
 options->remote_forwards = xreallocarray(options->remote_forwards,
     options->num_remote_forwards + 1,
     sizeof(*options->remote_forwards));
 fwd = &options->remote_forwards[options->num_remote_forwards++];

 fwd->listen_host = newfwd->listen_host;
 fwd->listen_port = newfwd->listen_port;
 fwd->listen_path = newfwd->listen_path;
 fwd->connect_host = newfwd->connect_host;
 fwd->connect_port = newfwd->connect_port;
 fwd->connect_path = newfwd->connect_path;
 fwd->handle = newfwd->handle;
 fwd->allocated_port = 0;
}
