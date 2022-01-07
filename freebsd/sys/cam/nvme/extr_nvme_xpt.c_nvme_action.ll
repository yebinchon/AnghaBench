; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"nvme_action: func= %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*)* @nvme_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_action(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  store %union.ccb* %0, %union.ccb** %2, align 8
  %3 = load %union.ccb*, %union.ccb** %2, align 8
  %4 = bitcast %union.ccb* %3 to %struct.TYPE_5__*
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %8 = load %union.ccb*, %union.ccb** %2, align 8
  %9 = bitcast %union.ccb* %8 to %struct.TYPE_5__*
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @CAM_DEBUG(%struct.TYPE_7__* %6, i32 %7, i8* %13)
  %15 = load %union.ccb*, %union.ccb** %2, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_5__*
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %39 [
    i32 130, label %19
    i32 128, label %19
    i32 129, label %19
    i32 131, label %36
  ]

19:                                               ; preds = %1, %1, %1
  %20 = load %union.ccb*, %union.ccb** %2, align 8
  %21 = bitcast %union.ccb* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %union.ccb*, %union.ccb** %2, align 8
  %27 = bitcast %union.ccb* %26 to %struct.TYPE_5__*
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load %union.ccb*, %union.ccb** %2, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_6__*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %union.ccb*, %union.ccb** %2, align 8
  %35 = call i32 @nvme_scan_lun(i32 %25, %struct.TYPE_7__* %29, i32 %33, %union.ccb* %34)
  br label %42

36:                                               ; preds = %1
  %37 = load %union.ccb*, %union.ccb** %2, align 8
  %38 = call i32 @nvme_dev_advinfo(%union.ccb* %37)
  br label %42

39:                                               ; preds = %1
  %40 = load %union.ccb*, %union.ccb** %2, align 8
  %41 = call i32 @xpt_action_default(%union.ccb* %40)
  br label %42

42:                                               ; preds = %39, %36, %19
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @nvme_scan_lun(i32, %struct.TYPE_7__*, i32, %union.ccb*) #1

declare dso_local i32 @nvme_dev_advinfo(%union.ccb*) #1

declare dso_local i32 @xpt_action_default(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
