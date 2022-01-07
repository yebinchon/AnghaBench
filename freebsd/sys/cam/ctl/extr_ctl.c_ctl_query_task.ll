; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_query_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_query_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.ctl_softc = type { i32, %struct.ctl_lun** }
%struct.ctl_lun = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }

@ctl_max_luns = common dso_local global i64 0, align 8
@CTL_TASK_LUN_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@ooa_links = common dso_local global i32 0, align 4
@CTL_TASK_FUNCTION_SUCCEEDED = common dso_local global i32 0, align 4
@CTL_TASK_FUNCTION_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*, i32)* @ctl_query_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_query_task(%union.ctl_io* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ctl_io*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctl_softc*, align 8
  %7 = alloca %union.ctl_io*, align 8
  %8 = alloca %struct.ctl_lun*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %union.ctl_io* %0, %union.ctl_io** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %12 = call %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io* %11)
  store %struct.ctl_softc* %12, %struct.ctl_softc** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %14 = bitcast %union.ctl_io* %13 to %struct.TYPE_8__*
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.ctl_softc*, %struct.ctl_softc** %6, align 8
  %19 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @ctl_max_luns, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load %struct.ctl_softc*, %struct.ctl_softc** %6, align 8
  %26 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %25, i32 0, i32 1
  %27 = load %struct.ctl_lun**, %struct.ctl_lun*** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.ctl_lun*, %struct.ctl_lun** %27, i64 %28
  %30 = load %struct.ctl_lun*, %struct.ctl_lun** %29, align 8
  store %struct.ctl_lun* %30, %struct.ctl_lun** %8, align 8
  %31 = icmp eq %struct.ctl_lun* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %24, %2
  %33 = load %struct.ctl_softc*, %struct.ctl_softc** %6, align 8
  %34 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load i32, i32* @CTL_TASK_LUN_DOES_NOT_EXIST, align 4
  %37 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %38 = bitcast %union.ctl_io* %37 to %struct.TYPE_7__*
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  store i32 1, i32* %3, align 4
  br label %125

40:                                               ; preds = %24
  %41 = load %struct.ctl_lun*, %struct.ctl_lun** %8, align 8
  %42 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %41, i32 0, i32 0
  %43 = call i32 @mtx_lock(i32* %42)
  %44 = load %struct.ctl_softc*, %struct.ctl_softc** %6, align 8
  %45 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %44, i32 0, i32 0
  %46 = call i32 @mtx_unlock(i32* %45)
  %47 = load %struct.ctl_lun*, %struct.ctl_lun** %8, align 8
  %48 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %47, i32 0, i32 1
  %49 = call i64 @TAILQ_FIRST(i32* %48)
  %50 = inttoptr i64 %49 to %union.ctl_io*
  store %union.ctl_io* %50, %union.ctl_io** %7, align 8
  br label %51

51:                                               ; preds = %102, %40
  %52 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %53 = icmp ne %union.ctl_io* %52, null
  br i1 %53, label %54, label %108

54:                                               ; preds = %51
  %55 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %56 = bitcast %union.ctl_io* %55 to %struct.TYPE_8__*
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %61 = bitcast %union.ctl_io* %60 to %struct.TYPE_8__*
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %59, %64
  br i1 %65, label %86, label %66

66:                                               ; preds = %54
  %67 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %68 = bitcast %union.ctl_io* %67 to %struct.TYPE_8__*
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %73 = bitcast %union.ctl_io* %72 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %71, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %66
  %79 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %80 = bitcast %union.ctl_io* %79 to %struct.TYPE_8__*
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78, %66, %54
  br label %102

87:                                               ; preds = %78
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %92 = bitcast %union.ctl_io* %91 to %struct.TYPE_6__*
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %96 = bitcast %union.ctl_io* %95 to %struct.TYPE_7__*
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %90, %87
  store i32 1, i32* %9, align 4
  br label %108

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %86
  %103 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %104 = bitcast %union.ctl_io* %103 to %struct.TYPE_8__*
  %105 = load i32, i32* @ooa_links, align 4
  %106 = call i64 @TAILQ_NEXT(%struct.TYPE_8__* %104, i32 %105)
  %107 = inttoptr i64 %106 to %union.ctl_io*
  store %union.ctl_io* %107, %union.ctl_io** %7, align 8
  br label %51

108:                                              ; preds = %100, %51
  %109 = load %struct.ctl_lun*, %struct.ctl_lun** %8, align 8
  %110 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %109, i32 0, i32 0
  %111 = call i32 @mtx_unlock(i32* %110)
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load i32, i32* @CTL_TASK_FUNCTION_SUCCEEDED, align 4
  %116 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %117 = bitcast %union.ctl_io* %116 to %struct.TYPE_7__*
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 8
  br label %124

119:                                              ; preds = %108
  %120 = load i32, i32* @CTL_TASK_FUNCTION_COMPLETE, align 4
  %121 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %122 = bitcast %union.ctl_io* %121 to %struct.TYPE_7__*
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 8
  br label %124

124:                                              ; preds = %119, %114
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %32
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @TAILQ_FIRST(i32*) #1

declare dso_local i64 @TAILQ_NEXT(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
