
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_device {int dummy; } ;
struct p2p_data {int channels; } ;


 int p2p_peer_channels_check (struct p2p_data*,int *,struct p2p_device*,int const*,size_t) ;

__attribute__((used)) static int p2p_peer_channels(struct p2p_data *p2p, struct p2p_device *dev,
        const u8 *channel_list, size_t channel_list_len)
{
 return p2p_peer_channels_check(p2p, &p2p->channels, dev,
           channel_list, channel_list_len);
}
