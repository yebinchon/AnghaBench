; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_tpc_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_tpc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i32, i32, i32 }
%struct.tpc_token = type { %struct.tpc_token* }

@links = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_tpc_shutdown(%struct.ctl_softc* %0) #0 {
  %2 = alloca %struct.ctl_softc*, align 8
  %3 = alloca %struct.tpc_token*, align 8
  store %struct.ctl_softc* %0, %struct.ctl_softc** %2, align 8
  %4 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %4, i32 0, i32 2
  %6 = call i32 @callout_drain(i32* %5)
  %7 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  br label %10

10:                                               ; preds = %15, %1
  %11 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %11, i32 0, i32 1
  %13 = call %struct.tpc_token* @TAILQ_FIRST(i32* %12)
  store %struct.tpc_token* %13, %struct.tpc_token** %3, align 8
  %14 = icmp ne %struct.tpc_token* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %16, i32 0, i32 1
  %18 = load %struct.tpc_token*, %struct.tpc_token** %3, align 8
  %19 = load i32, i32* @links, align 4
  %20 = call i32 @TAILQ_REMOVE(i32* %17, %struct.tpc_token* %18, i32 %19)
  %21 = load %struct.tpc_token*, %struct.tpc_token** %3, align 8
  %22 = getelementptr inbounds %struct.tpc_token, %struct.tpc_token* %21, i32 0, i32 0
  %23 = load %struct.tpc_token*, %struct.tpc_token** %22, align 8
  %24 = load i32, i32* @M_CTL, align 4
  %25 = call i32 @free(%struct.tpc_token* %23, i32 %24)
  %26 = load %struct.tpc_token*, %struct.tpc_token** %3, align 8
  %27 = load i32, i32* @M_CTL, align 4
  %28 = call i32 @free(%struct.tpc_token* %26, i32 %27)
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %30, i32 0, i32 0
  %32 = call i32 @mtx_unlock(i32* %31)
  %33 = load %struct.ctl_softc*, %struct.ctl_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %33, i32 0, i32 0
  %35 = call i32 @mtx_destroy(i32* %34)
  ret void
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.tpc_token* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tpc_token*, i32) #1

declare dso_local i32 @free(%struct.tpc_token*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
