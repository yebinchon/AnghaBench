; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_init_standard_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_init_standard_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }

@CAM_DIR_OUT = common dso_local global i32 0, align 4
@mmcprobe_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*, i32)* @init_standard_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_standard_ccb(%union.ccb* %0, i32 %1) #0 {
  %3 = alloca %union.ccb*, align 8
  %4 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %union.ccb*, %union.ccb** %3, align 8
  %7 = bitcast %union.ccb* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @CAM_DIR_OUT, align 4
  %10 = load %union.ccb*, %union.ccb** %3, align 8
  %11 = bitcast %union.ccb* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 8
  %13 = load %union.ccb*, %union.ccb** %3, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %union.ccb*, %union.ccb** %3, align 8
  %17 = bitcast %union.ccb* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 15000, i32* %18, align 8
  %19 = load i32, i32* @mmcprobe_done, align 4
  %20 = load %union.ccb*, %union.ccb** %3, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
