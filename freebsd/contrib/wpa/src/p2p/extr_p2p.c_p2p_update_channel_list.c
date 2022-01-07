
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; } ;
struct p2p_channels {int dummy; } ;
struct TYPE_2__ {int cli_channels; int channels; } ;


 int os_memcpy (int *,struct p2p_channels const*,int) ;
 int p2p_channels_dump (struct p2p_data*,char*,int *) ;
 int p2p_dbg (struct p2p_data*,char*) ;

void p2p_update_channel_list(struct p2p_data *p2p,
        const struct p2p_channels *chan,
        const struct p2p_channels *cli_chan)
{
 p2p_dbg(p2p, "Update channel list");
 os_memcpy(&p2p->cfg->channels, chan, sizeof(struct p2p_channels));
 p2p_channels_dump(p2p, "channels", &p2p->cfg->channels);
 os_memcpy(&p2p->cfg->cli_channels, cli_chan,
    sizeof(struct p2p_channels));
 p2p_channels_dump(p2p, "cli_channels", &p2p->cfg->cli_channels);
}
