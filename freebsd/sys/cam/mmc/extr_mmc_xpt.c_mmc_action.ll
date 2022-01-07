; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mmc_action! func_code=%x, action %s\0A\00", align 1
@CAM_DEBUG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"XPT_SCAN_{BUS,TGT,LUN}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*)* @mmc_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_action(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  store %union.ccb* %0, %union.ccb** %2, align 8
  %3 = load %union.ccb*, %union.ccb** %2, align 8
  %4 = bitcast %union.ccb* %3 to %struct.TYPE_6__*
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %8 = load %union.ccb*, %union.ccb** %2, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_6__*
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %union.ccb*, %union.ccb** %2, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_6__*
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @xpt_action_name(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @CAM_DEBUG(%struct.TYPE_7__* %6, i32 %7, i8* %18)
  %20 = load %union.ccb*, %union.ccb** %2, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_6__*
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %50 [
    i32 130, label %24
    i32 128, label %24
    i32 129, label %24
    i32 131, label %47
  ]

24:                                               ; preds = %1, %1, %1
  %25 = load %union.ccb*, %union.ccb** %2, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_6__*
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32, i32* @CAM_DEBUG_INFO, align 4
  %30 = call i32 @CAM_DEBUG(%struct.TYPE_7__* %28, i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %union.ccb*, %union.ccb** %2, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %union.ccb*, %union.ccb** %2, align 8
  %38 = bitcast %union.ccb* %37 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %union.ccb*, %union.ccb** %2, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_5__*
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %union.ccb*, %union.ccb** %2, align 8
  %46 = call i32 @mmc_scan_lun(i32 %36, %struct.TYPE_7__* %40, i32 %44, %union.ccb* %45)
  br label %53

47:                                               ; preds = %1
  %48 = load %union.ccb*, %union.ccb** %2, align 8
  %49 = call i32 @mmc_dev_advinfo(%union.ccb* %48)
  br label %53

50:                                               ; preds = %1
  %51 = load %union.ccb*, %union.ccb** %2, align 8
  %52 = call i32 @xpt_action_default(%union.ccb* %51)
  br label %53

53:                                               ; preds = %50, %47, %24
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @xpt_action_name(i32) #1

declare dso_local i32 @mmc_scan_lun(i32, %struct.TYPE_7__*, i32, %union.ccb*) #1

declare dso_local i32 @mmc_dev_advinfo(%union.ccb*) #1

declare dso_local i32 @xpt_action_default(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
