; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_session_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_session_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfiscsi_softc = type { i32, i32, i32 }
%struct.cfiscsi_session = type { i64, i32, i32*, i32 }

@cfiscsi_softc = common dso_local global %struct.cfiscsi_softc zeroinitializer, align 4
@.str = private unnamed_addr constant [45 x i8] c"destroying session with outstanding CTL pdus\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"destroying session with non-empty queue\00", align 1
@cs_next = common dso_local global i32 0, align 4
@M_CFISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfiscsi_session*)* @cfiscsi_session_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_session_delete(%struct.cfiscsi_session* %0) #0 {
  %2 = alloca %struct.cfiscsi_session*, align 8
  %3 = alloca %struct.cfiscsi_softc*, align 8
  store %struct.cfiscsi_session* %0, %struct.cfiscsi_session** %2, align 8
  store %struct.cfiscsi_softc* @cfiscsi_softc, %struct.cfiscsi_softc** %3, align 8
  %4 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %5 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %11 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %10, i32 0, i32 3
  %12 = call i32 @TAILQ_EMPTY(i32* %11)
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %14, i32 0, i32 1
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %3, align 8
  %18 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %17, i32 0, i32 2
  %19 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %20 = load i32, i32* @cs_next, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* %18, %struct.cfiscsi_session* %19, i32 %20)
  %22 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %22, i32 0, i32 1
  %24 = call i32 @mtx_unlock(i32* %23)
  %25 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %26 = call i32 @cfiscsi_session_unregister_initiator(%struct.cfiscsi_session* %25)
  %27 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %28 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %33 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @cfiscsi_target_release(i32* %34)
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %38 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @icl_conn_close(i32 %39)
  %41 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %42 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @icl_conn_free(i32 %43)
  %45 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %46 = load i32, i32* @M_CFISCSI, align 4
  %47 = call i32 @free(%struct.cfiscsi_session* %45, i32 %46)
  %48 = load %struct.cfiscsi_softc*, %struct.cfiscsi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.cfiscsi_softc, %struct.cfiscsi_softc* %48, i32 0, i32 0
  %50 = call i32 @cv_signal(i32* %49)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cfiscsi_session*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cfiscsi_session_unregister_initiator(%struct.cfiscsi_session*) #1

declare dso_local i32 @cfiscsi_target_release(i32*) #1

declare dso_local i32 @icl_conn_close(i32) #1

declare dso_local i32 @icl_conn_free(i32) #1

declare dso_local i32 @free(%struct.cfiscsi_session*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
