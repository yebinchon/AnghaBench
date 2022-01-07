; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_session_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_session_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfiscsi_session = type { i32, i32, i32, i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.cfiscsi_session*, i32, i32 }
%struct.cfiscsi_softc = type { i32, i32, i64 }

@M_CFISCSI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cfiscsi_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cfiscsi_mt\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"cfiscsi\00", align 1
@cfiscsi_receive_callback = common dso_local global i32 0, align 4
@cfiscsi_error_callback = common dso_local global i32 0, align 4
@cfiscsi_maintenance_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"cfiscsimt\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"kthread_add(9) failed with error %d\00", align 1
@cs_next = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@cfiscsi_callout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfiscsi_session* (%struct.cfiscsi_softc*, i8*)* @cfiscsi_session_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfiscsi_session* @cfiscsi_session_new(%struct.cfiscsi_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.cfiscsi_session*, align 8
  %4 = alloca %struct.cfiscsi_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cfiscsi_session*, align 8
  %7 = alloca i32, align 4
  store %struct.cfiscsi_softc* %0, %struct.cfiscsi_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @M_CFISCSI, align 4
  %9 = load i32, i32* @M_NOWAIT, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.cfiscsi_session* @malloc(i32 56, i32 %8, i32 %11)
  store %struct.cfiscsi_session* %12, %struct.cfiscsi_session** %6, align 8
  %13 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %14 = icmp eq %struct.cfiscsi_session* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @CFISCSI_WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.cfiscsi_session* null, %struct.cfiscsi_session** %3, align 8
  br label %106

17:                                               ; preds = %2
  %18 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %19 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %21 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %20, i32 0, i32 9
  %22 = call i32 @refcount_init(i32* %21, i32 0)
  %23 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %24 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %23, i32 0, i32 8
  %25 = call i32 @TAILQ_INIT(i32* %24)
  %26 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %27 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %26, i32 0, i32 5
  %28 = load i32, i32* @MTX_DEF, align 4
  %29 = call i32 @mtx_init(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %28)
  %30 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %31 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %30, i32 0, i32 7
  %32 = call i32 @cv_init(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %34 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %37 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %36, i32 0, i32 5
  %38 = call %struct.TYPE_2__* @icl_new_conn(i8* %35, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %37)
  %39 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %40 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %39, i32 0, i32 4
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %40, align 8
  %41 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %42 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp eq %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %17
  %46 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %47 = load i32, i32* @M_CFISCSI, align 4
  %48 = call i32 @free(%struct.cfiscsi_session* %46, i32 %47)
  store %struct.cfiscsi_session* null, %struct.cfiscsi_session** %3, align 8
  br label %106

49:                                               ; preds = %17
  %50 = load i32, i32* @cfiscsi_receive_callback, align 4
  %51 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %52 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @cfiscsi_error_callback, align 4
  %56 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %57 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 8
  %60 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %61 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %62 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.cfiscsi_session* %60, %struct.cfiscsi_session** %64, align 8
  %65 = load i32, i32* @cfiscsi_maintenance_thread, align 4
  %66 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %67 = call i32 @kthread_add(i32 %65, %struct.cfiscsi_session* %66, i32* null, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %49
  %71 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %75 = load i32, i32* @M_CFISCSI, align 4
  %76 = call i32 @free(%struct.cfiscsi_session* %74, i32 %75)
  store %struct.cfiscsi_session* null, %struct.cfiscsi_session** %3, align 8
  br label %106

77:                                               ; preds = %49
  %78 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %4, align 8
  %79 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %78, i32 0, i32 0
  %80 = call i32 @mtx_lock(i32* %79)
  %81 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %4, align 8
  %82 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %86 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %4, align 8
  %88 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %87, i32 0, i32 1
  %89 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %90 = load i32, i32* @cs_next, align 4
  %91 = call i32 @TAILQ_INSERT_TAIL(i32* %88, %struct.cfiscsi_session* %89, i32 %90)
  %92 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %4, align 8
  %93 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %92, i32 0, i32 0
  %94 = call i32 @mtx_unlock(i32* %93)
  %95 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %96 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %95, i32 0, i32 2
  %97 = call i32 @callout_init(i32* %96, i32 1)
  %98 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %99 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %98, i32 0, i32 2
  %100 = load i32, i32* @hz, align 4
  %101 = mul nsw i32 1, %100
  %102 = load i32, i32* @cfiscsi_callout, align 4
  %103 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %104 = call i32 @callout_reset(i32* %99, i32 %101, i32 %102, %struct.cfiscsi_session* %103)
  %105 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  store %struct.cfiscsi_session* %105, %struct.cfiscsi_session** %3, align 8
  br label %106

106:                                              ; preds = %77, %70, %45, %15
  %107 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  ret %struct.cfiscsi_session* %107
}

declare dso_local %struct.cfiscsi_session* @malloc(i32, i32, i32) #1

declare dso_local i32 @CFISCSI_WARN(i8*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local %struct.TYPE_2__* @icl_new_conn(i8*, i32, i8*, i32*) #1

declare dso_local i32 @free(%struct.cfiscsi_session*, i32) #1

declare dso_local i32 @kthread_add(i32, %struct.cfiscsi_session*, i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session*, i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cfiscsi_session*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.cfiscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
