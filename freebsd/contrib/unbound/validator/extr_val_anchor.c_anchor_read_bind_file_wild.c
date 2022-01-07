
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct val_anchors {int dummy; } ;
typedef int sldns_buffer ;
struct TYPE_5__ {char const** gl_pathv; scalar_t__ gl_pathc; } ;
typedef TYPE_1__ glob_t ;
typedef int g ;


 int GLOB_ABORTED ;
 int GLOB_BRACE ;
 int GLOB_ERR ;
 int GLOB_NOMATCH ;
 int GLOB_NOSORT ;
 int GLOB_NOSPACE ;
 int GLOB_TILDE ;
 int VERB_QUERY ;
 int anchor_read_bind_file (struct val_anchors*,int *,char const*) ;
 int errno ;
 int glob (char const*,int,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int log_err (char*,char const*,...) ;
 int memset (TYPE_1__*,int ,int) ;
 int strchr (char const*,char) ;
 int strerror (int ) ;
 int verbose (int ,char*,char const*) ;

__attribute__((used)) static int
anchor_read_bind_file_wild(struct val_anchors* anchors, sldns_buffer* buffer,
 const char* pat)
{
 return anchor_read_bind_file(anchors, buffer, pat);

}
