; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_query_async_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_query_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ctl_softc = type { i32, %struct.ctl_lun** }
%struct.ctl_lun = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ctl_max_luns = common dso_local global i64 0, align 8
@CTL_TASK_LUN_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@CTL_UA_NONE = common dso_local global i64 0, align 8
@CTL_TASK_FUNCTION_SUCCEEDED = common dso_local global i32 0, align 4
@CTL_TASK_FUNCTION_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_query_async_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_query_async_event(%union.ctl_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca %struct.ctl_softc*, align 8
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  %9 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %10 = call %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io* %9)
  store %struct.ctl_softc* %10, %struct.ctl_softc** %4, align 8
  %11 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %12 = bitcast %union.ctl_io* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @ctl_max_luns, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %23, i32 0, i32 1
  %25 = load %struct.ctl_lun**, %struct.ctl_lun*** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.ctl_lun*, %struct.ctl_lun** %25, i64 %26
  %28 = load %struct.ctl_lun*, %struct.ctl_lun** %27, align 8
  store %struct.ctl_lun* %28, %struct.ctl_lun** %5, align 8
  %29 = icmp eq %struct.ctl_lun* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %22, %1
  %31 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %31, i32 0, i32 0
  %33 = call i32 @mtx_unlock(i32* %32)
  %34 = load i32, i32* @CTL_TASK_LUN_DOES_NOT_EXIST, align 4
  %35 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %36 = bitcast %union.ctl_io* %35 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  store i32 1, i32* %2, align 4
  br label %73

38:                                               ; preds = %22
  %39 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %40 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %39, i32 0, i32 0
  %41 = call i32 @mtx_lock(i32* %40)
  %42 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %46 = bitcast %union.ctl_io* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i64 @ctl_get_initindex(%struct.TYPE_6__* %47)
  store i64 %48, i64* %8, align 8
  %49 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %52 = bitcast %union.ctl_io* %51 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ctl_build_qae(%struct.ctl_lun* %49, i64 %50, i32 %54)
  store i64 %55, i64* %6, align 8
  %56 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %57 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %56, i32 0, i32 0
  %58 = call i32 @mtx_unlock(i32* %57)
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @CTL_UA_NONE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %38
  %63 = load i32, i32* @CTL_TASK_FUNCTION_SUCCEEDED, align 4
  %64 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %65 = bitcast %union.ctl_io* %64 to %struct.TYPE_5__*
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  br label %72

67:                                               ; preds = %38
  %68 = load i32, i32* @CTL_TASK_FUNCTION_COMPLETE, align 4
  %69 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %70 = bitcast %union.ctl_io* %69 to %struct.TYPE_5__*
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %62
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %30
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @ctl_get_initindex(%struct.TYPE_6__*) #1

declare dso_local i64 @ctl_build_qae(%struct.ctl_lun*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
