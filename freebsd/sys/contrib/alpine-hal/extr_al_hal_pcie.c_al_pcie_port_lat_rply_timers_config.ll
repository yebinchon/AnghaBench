; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_lat_rply_timers_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_lat_rply_timers_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.al_pcie_latency_replay_timers = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_pcie_port*, %struct.al_pcie_latency_replay_timers*)* @al_pcie_port_lat_rply_timers_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_pcie_port_lat_rply_timers_config(%struct.al_pcie_port* %0, %struct.al_pcie_latency_replay_timers* %1) #0 {
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca %struct.al_pcie_latency_replay_timers*, align 8
  %5 = alloca %struct.al_pcie_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  store %struct.al_pcie_latency_replay_timers* %1, %struct.al_pcie_latency_replay_timers** %4, align 8
  %7 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %8 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %7, i32 0, i32 0
  %9 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %8, align 8
  store %struct.al_pcie_regs* %9, %struct.al_pcie_regs** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.al_pcie_latency_replay_timers*, %struct.al_pcie_latency_replay_timers** %4, align 8
  %12 = getelementptr inbounds %struct.al_pcie_latency_replay_timers, %struct.al_pcie_latency_replay_timers* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @AL_REG_FIELD_SET(i32 %10, i32 65535, i32 0, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.al_pcie_latency_replay_timers*, %struct.al_pcie_latency_replay_timers** %4, align 8
  %17 = getelementptr inbounds %struct.al_pcie_latency_replay_timers, %struct.al_pcie_latency_replay_timers* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AL_REG_FIELD_SET(i32 %15, i32 -65536, i32 16, i32 %18)
  %20 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %21 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @al_reg_write32(i32* %23, i32 %24)
  ret i32 0
}

declare dso_local i32 @AL_REG_FIELD_SET(i32, i32, i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
