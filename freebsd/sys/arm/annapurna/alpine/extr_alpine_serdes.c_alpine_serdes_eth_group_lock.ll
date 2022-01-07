; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_serdes.c_alpine_serdes_eth_group_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_serdes.c_alpine_serdes_eth_group_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpine_serdes_eth_group_mode = type { i32 }

@alpine_serdes_eth_group_mode = common dso_local global %struct.alpine_serdes_eth_group_mode* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alpine_serdes_eth_group_lock(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.alpine_serdes_eth_group_mode*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.alpine_serdes_eth_group_mode*, %struct.alpine_serdes_eth_group_mode** @alpine_serdes_eth_group_mode, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.alpine_serdes_eth_group_mode, %struct.alpine_serdes_eth_group_mode* %4, i64 %5
  store %struct.alpine_serdes_eth_group_mode* %6, %struct.alpine_serdes_eth_group_mode** %3, align 8
  %7 = load %struct.alpine_serdes_eth_group_mode*, %struct.alpine_serdes_eth_group_mode** %3, align 8
  %8 = getelementptr inbounds %struct.alpine_serdes_eth_group_mode, %struct.alpine_serdes_eth_group_mode* %7, i32 0, i32 0
  %9 = call i64 @mtx_initialized(i32* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.alpine_serdes_eth_group_mode*, %struct.alpine_serdes_eth_group_mode** %3, align 8
  %14 = getelementptr inbounds %struct.alpine_serdes_eth_group_mode, %struct.alpine_serdes_eth_group_mode* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  br label %16

16:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
