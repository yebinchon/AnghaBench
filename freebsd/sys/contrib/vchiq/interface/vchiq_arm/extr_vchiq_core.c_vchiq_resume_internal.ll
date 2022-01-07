; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_resume_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_resume_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@VCHIQ_SUCCESS = common dso_local global i32 0, align 4
@VCHIQ_CONNSTATE_PAUSED = common dso_local global i64 0, align 8
@VCHIQ_CONNSTATE_RESUMING = common dso_local global i32 0, align 4
@VCHIQ_ERROR = common dso_local global i32 0, align 4
@error_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_resume_internal(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load i32, i32* @VCHIQ_SUCCESS, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VCHIQ_CONNSTATE_PAUSED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = load i32, i32* @VCHIQ_CONNSTATE_RESUMING, align 4
  %13 = call i32 @vchiq_set_conn_state(%struct.TYPE_6__* %11, i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = call i32 @request_poll(%struct.TYPE_6__* %14, i32* null, i32 0)
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %17, i32* %3, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = load i32, i32* @error_count, align 4
  %20 = call i32 @VCHIQ_STATS_INC(%struct.TYPE_6__* %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @vchiq_set_conn_state(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @request_poll(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @VCHIQ_STATS_INC(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
