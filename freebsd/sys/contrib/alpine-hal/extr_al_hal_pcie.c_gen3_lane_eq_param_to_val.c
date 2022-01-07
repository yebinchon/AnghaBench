
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct al_pcie_gen3_lane_eq_params {int downstream_port_transmitter_preset; int downstream_port_receiver_preset_hint; int upstream_port_transmitter_preset; int upstream_port_receiver_preset_hint; } ;



__attribute__((used)) static uint16_t
gen3_lane_eq_param_to_val(const struct al_pcie_gen3_lane_eq_params *eq_params)
{
 uint16_t eq_control = 0;

 eq_control = eq_params->downstream_port_transmitter_preset & 0xF;
 eq_control |= (eq_params->downstream_port_receiver_preset_hint & 0x7) << 4;
 eq_control |= (eq_params->upstream_port_transmitter_preset & 0xF) << 8;
 eq_control |= (eq_params->upstream_port_receiver_preset_hint & 0x7) << 12;

 return eq_control;
}
