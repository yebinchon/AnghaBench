; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_ctrl_table_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_ctrl_table_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.al_eth_fwd_ctrl_table_index = type { i32 }
%struct.al_eth_fwd_ctrl_table_entry = type { i32 }

@AL_ETH_RX_CTRL_TABLE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_ctrl_table_set(%struct.al_hal_eth_adapter* %0, %struct.al_eth_fwd_ctrl_table_index* %1, %struct.al_eth_fwd_ctrl_table_entry* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca %struct.al_eth_fwd_ctrl_table_index*, align 8
  %6 = alloca %struct.al_eth_fwd_ctrl_table_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store %struct.al_eth_fwd_ctrl_table_index* %1, %struct.al_eth_fwd_ctrl_table_index** %5, align 8
  store %struct.al_eth_fwd_ctrl_table_entry* %2, %struct.al_eth_fwd_ctrl_table_entry** %6, align 8
  %9 = load %struct.al_eth_fwd_ctrl_table_entry*, %struct.al_eth_fwd_ctrl_table_entry** %6, align 8
  %10 = call i64 @al_eth_fwd_ctrl_entry_to_val(%struct.al_eth_fwd_ctrl_table_entry* %9)
  store i64 %10, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %36, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @AL_ETH_RX_CTRL_TABLE_SIZE, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.al_eth_fwd_ctrl_table_index*, %struct.al_eth_fwd_ctrl_table_index** %5, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @al_eth_ctrl_index_match(%struct.al_eth_fwd_ctrl_table_index* %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @al_reg_write32(i32* %25, i64 %26)
  %28 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @al_reg_write32(i32* %32, i64 %33)
  br label %35

35:                                               ; preds = %20, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %11

39:                                               ; preds = %11
  ret i32 0
}

declare dso_local i64 @al_eth_fwd_ctrl_entry_to_val(%struct.al_eth_fwd_ctrl_table_entry*) #1

declare dso_local i64 @al_eth_ctrl_index_match(%struct.al_eth_fwd_ctrl_table_index*, i64) #1

declare dso_local i32 @al_reg_write32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
