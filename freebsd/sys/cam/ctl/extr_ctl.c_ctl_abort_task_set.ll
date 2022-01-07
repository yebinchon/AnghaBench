; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_abort_task_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_abort_task_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.ctl_softc = type { i32, %struct.ctl_lun** }
%struct.ctl_lun = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@ctl_max_luns = common dso_local global i64 0, align 8
@CTL_TASK_LUN_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@CTL_TASK_ABORT_TASK_SET = common dso_local global i64 0, align 8
@CTL_FLAG_FROM_OTHER_SC = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@CTL_TASK_FUNCTION_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_abort_task_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_abort_task_set(%union.ctl_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca %struct.ctl_softc*, align 8
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca i64, align 8
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  %7 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %8 = call %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io* %7)
  store %struct.ctl_softc* %8, %struct.ctl_softc** %4, align 8
  %9 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %10 = bitcast %union.ctl_io* %9 to %struct.TYPE_5__*
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @ctl_max_luns, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %22 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %21, i32 0, i32 1
  %23 = load %struct.ctl_lun**, %struct.ctl_lun*** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.ctl_lun*, %struct.ctl_lun** %23, i64 %24
  %26 = load %struct.ctl_lun*, %struct.ctl_lun** %25, align 8
  store %struct.ctl_lun* %26, %struct.ctl_lun** %5, align 8
  %27 = icmp eq %struct.ctl_lun* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %20, %1
  %29 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %29, i32 0, i32 0
  %31 = call i32 @mtx_unlock(i32* %30)
  %32 = load i32, i32* @CTL_TASK_LUN_DOES_NOT_EXIST, align 4
  %33 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %34 = bitcast %union.ctl_io* %33 to %struct.TYPE_6__*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  store i32 1, i32* %2, align 4
  br label %91

36:                                               ; preds = %20
  %37 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %38 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %37, i32 0, i32 0
  %39 = call i32 @mtx_lock(i32* %38)
  %40 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %40, i32 0, i32 0
  %42 = call i32 @mtx_unlock(i32* %41)
  %43 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %44 = bitcast %union.ctl_io* %43 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CTL_TASK_ABORT_TASK_SET, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %36
  %50 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %51 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %52 = bitcast %union.ctl_io* %51 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %57 = bitcast %union.ctl_io* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %62 = bitcast %union.ctl_io* %61 to %struct.TYPE_5__*
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CTL_FLAG_FROM_OTHER_SC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @ctl_abort_tasks_lun(%struct.ctl_lun* %50, i32 %55, i32 %60, i32 %68)
  br label %83

70:                                               ; preds = %36
  %71 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %72 = load i32, i32* @UINT32_MAX, align 4
  %73 = load i32, i32* @UINT32_MAX, align 4
  %74 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %75 = bitcast %union.ctl_io* %74 to %struct.TYPE_5__*
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CTL_FLAG_FROM_OTHER_SC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ctl_abort_tasks_lun(%struct.ctl_lun* %71, i32 %72, i32 %73, i32 %81)
  br label %83

83:                                               ; preds = %70, %49
  %84 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %85 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %84, i32 0, i32 0
  %86 = call i32 @mtx_unlock(i32* %85)
  %87 = load i32, i32* @CTL_TASK_FUNCTION_COMPLETE, align 4
  %88 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %89 = bitcast %union.ctl_io* %88 to %struct.TYPE_6__*
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %83, %28
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_abort_tasks_lun(%struct.ctl_lun*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
