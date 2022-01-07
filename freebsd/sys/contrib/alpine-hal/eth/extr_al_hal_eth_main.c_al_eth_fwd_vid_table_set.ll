; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_fwd_vid_table_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_fwd_vid_table_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.al_eth_fwd_vid_table_entry = type { i32 }

@AL_ETH_FWD_VID_TABLE_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_fwd_vid_table_set(%struct.al_hal_eth_adapter* %0, i64 %1, %struct.al_eth_fwd_vid_table_entry* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.al_eth_fwd_vid_table_entry*, align 8
  %7 = alloca i64, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.al_eth_fwd_vid_table_entry* %2, %struct.al_eth_fwd_vid_table_entry** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @AL_ETH_FWD_VID_TABLE_NUM, align 8
  %10 = icmp slt i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @al_assert(i32 %11)
  %13 = load %struct.al_eth_fwd_vid_table_entry*, %struct.al_eth_fwd_vid_table_entry** %6, align 8
  %14 = call i64 @al_eth_fwd_vid_entry_to_val(%struct.al_eth_fwd_vid_table_entry* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @al_reg_write32(i32* %19, i64 %20)
  %22 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @al_reg_write32(i32* %26, i64 %27)
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i64 @al_eth_fwd_vid_entry_to_val(%struct.al_eth_fwd_vid_table_entry*) #1

declare dso_local i32 @al_reg_write32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
