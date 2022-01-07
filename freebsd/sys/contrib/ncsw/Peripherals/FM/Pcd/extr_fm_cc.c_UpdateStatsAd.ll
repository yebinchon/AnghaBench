; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_UpdateStatsAd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_UpdateStatsAd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@FM_PCD_AD_STATS_TYPE = common dso_local global i32 0, align 4
@FM_PCD_AD_STATS_NEXT_ACTION_SHIFT = common dso_local global i32 0, align 4
@FM_PCD_AD_STATS_NEXT_ACTION_MASK = common dso_local global i32 0, align 4
@FM_PCD_AD_STATS_NAD_EN = common dso_local global i32 0, align 4
@FM_PCD_AD_STATS_OP_CODE = common dso_local global i32 0, align 4
@FM_PCD_AD_STATS_FLR_ADDR_MASK = common dso_local global i32 0, align 4
@FM_PCD_AD_STATS_FLR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64)* @UpdateStatsAd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateStatsAd(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %7, align 8
  %15 = load i32, i32* @FM_PCD_AD_STATS_TYPE, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @WRITE_UINT32(i32 %18, i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @XX_VirtToPhys(i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = sub nsw i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @FM_PCD_AD_STATS_NEXT_ACTION_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* @FM_PCD_AD_STATS_NEXT_ACTION_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @FM_PCD_AD_STATS_NAD_EN, align 4
  %34 = load i32, i32* @FM_PCD_AD_STATS_OP_CODE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @WRITE_UINT32(i32 %40, i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @XX_VirtToPhys(i64 %45)
  %47 = load i64, i64* %6, align 8
  %48 = sub nsw i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @SetStatsCounters(%struct.TYPE_6__* %50, i32 %51)
  ret void
}

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i64 @XX_VirtToPhys(i64) #1

declare dso_local i32 @SetStatsCounters(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
