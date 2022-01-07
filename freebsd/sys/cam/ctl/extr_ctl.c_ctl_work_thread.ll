; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_work_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_work_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_thread = type { i32*, i32, i32, i32, i32, i32, %struct.ctl_softc* }
%struct.ctl_softc = type { i32 }
%union.ctl_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"ctl_work_thread starting\0A\00", align 1
@curthread = common dso_local global i32 0, align 4
@PUSER = common dso_local global i64 0, align 8
@links = common dso_local global i32 0, align 4
@CTL_IO_TASK = common dso_local global i64 0, align 8
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ctl_scsiio failed\0A\00", align 1
@PDROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ctl_work_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_work_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ctl_thread*, align 8
  %4 = alloca %struct.ctl_softc*, align 8
  %5 = alloca %union.ctl_io*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ctl_thread*
  store %struct.ctl_thread* %8, %struct.ctl_thread** %3, align 8
  %9 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %10 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %9, i32 0, i32 6
  %11 = load %struct.ctl_softc*, %struct.ctl_softc** %10, align 8
  store %struct.ctl_softc* %11, %struct.ctl_softc** %4, align 8
  %12 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @curthread, align 4
  %14 = call i32 @thread_lock(i32 %13)
  %15 = load i32, i32* @curthread, align 4
  %16 = load i64, i64* @PUSER, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i32 @sched_prio(i32 %15, i64 %17)
  %19 = load i32, i32* @curthread, align 4
  %20 = call i32 @thread_unlock(i32 %19)
  br label %21

21:                                               ; preds = %118, %117, %93, %54, %37, %1
  %22 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %124

27:                                               ; preds = %21
  %28 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %29 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %28, i32 0, i32 1
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %31, i32 0, i32 5
  %33 = call i64 @STAILQ_FIRST(i32* %32)
  %34 = inttoptr i64 %33 to %union.ctl_io*
  store %union.ctl_io* %34, %union.ctl_io** %5, align 8
  %35 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %36 = icmp ne %union.ctl_io* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %39 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %38, i32 0, i32 5
  %40 = load i32, i32* @links, align 4
  %41 = call i32 @STAILQ_REMOVE_HEAD(i32* %39, i32 %40)
  %42 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %43 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %42, i32 0, i32 1
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %46 = call i32 @ctl_handle_isc(%union.ctl_io* %45)
  br label %21

47:                                               ; preds = %27
  %48 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %49 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %48, i32 0, i32 4
  %50 = call i64 @STAILQ_FIRST(i32* %49)
  %51 = inttoptr i64 %50 to %union.ctl_io*
  store %union.ctl_io* %51, %union.ctl_io** %5, align 8
  %52 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %53 = icmp ne %union.ctl_io* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %56 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %55, i32 0, i32 4
  %57 = load i32, i32* @links, align 4
  %58 = call i32 @STAILQ_REMOVE_HEAD(i32* %56, i32 %57)
  %59 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %60 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %59, i32 0, i32 1
  %61 = call i32 @mtx_unlock(i32* %60)
  %62 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %63 = call i32 @ctl_process_done(%union.ctl_io* %62)
  br label %21

64:                                               ; preds = %47
  %65 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %66 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %65, i32 0, i32 3
  %67 = call i64 @STAILQ_FIRST(i32* %66)
  %68 = inttoptr i64 %67 to %union.ctl_io*
  store %union.ctl_io* %68, %union.ctl_io** %5, align 8
  %69 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %70 = icmp ne %union.ctl_io* %69, null
  br i1 %70, label %71, label %94

71:                                               ; preds = %64
  %72 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %73 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %72, i32 0, i32 3
  %74 = load i32, i32* @links, align 4
  %75 = call i32 @STAILQ_REMOVE_HEAD(i32* %73, i32 %74)
  %76 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %77 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %76, i32 0, i32 1
  %78 = call i32 @mtx_unlock(i32* %77)
  %79 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %80 = bitcast %union.ctl_io* %79 to %struct.TYPE_2__*
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CTL_IO_TASK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %87 = call i32 @ctl_run_task(%union.ctl_io* %86)
  br label %93

88:                                               ; preds = %71
  %89 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %90 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %91 = bitcast %union.ctl_io* %90 to i32*
  %92 = call i32 @ctl_scsiio_precheck(%struct.ctl_softc* %89, i32* %91)
  br label %93

93:                                               ; preds = %88, %85
  br label %21

94:                                               ; preds = %64
  %95 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %96 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %95, i32 0, i32 2
  %97 = call i64 @STAILQ_FIRST(i32* %96)
  %98 = inttoptr i64 %97 to %union.ctl_io*
  store %union.ctl_io* %98, %union.ctl_io** %5, align 8
  %99 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %100 = icmp ne %union.ctl_io* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %94
  %102 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %103 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %102, i32 0, i32 2
  %104 = load i32, i32* @links, align 4
  %105 = call i32 @STAILQ_REMOVE_HEAD(i32* %103, i32 %104)
  %106 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %107 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %106, i32 0, i32 1
  %108 = call i32 @mtx_unlock(i32* %107)
  %109 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  %110 = bitcast %union.ctl_io* %109 to i32*
  %111 = call i32 @ctl_scsiio(i32* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %101
  %116 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %101
  br label %21

118:                                              ; preds = %94
  %119 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %120 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %121 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %120, i32 0, i32 1
  %122 = load i32, i32* @PDROP, align 4
  %123 = call i32 @mtx_sleep(%struct.ctl_thread* %119, i32* %121, i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %21

124:                                              ; preds = %21
  %125 = load %struct.ctl_thread*, %struct.ctl_thread** %3, align 8
  %126 = getelementptr inbounds %struct.ctl_thread, %struct.ctl_thread* %125, i32 0, i32 0
  store i32* null, i32** %126, align 8
  %127 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @sched_prio(i32, i64) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_handle_isc(%union.ctl_io*) #1

declare dso_local i32 @ctl_process_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_run_task(%union.ctl_io*) #1

declare dso_local i32 @ctl_scsiio_precheck(%struct.ctl_softc*, i32*) #1

declare dso_local i32 @ctl_scsiio(i32*) #1

declare dso_local i32 @mtx_sleep(%struct.ctl_thread*, i32*, i32, i8*, i32) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
