; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_add_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_add_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i32, i32 }
%struct.ctl_be_lun = type { i32 }

@control_softc = common dso_local global %struct.ctl_softc* null, align 8
@links = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_add_lun(%struct.ctl_be_lun* %0) #0 {
  %2 = alloca %struct.ctl_be_lun*, align 8
  %3 = alloca %struct.ctl_softc*, align 8
  store %struct.ctl_be_lun* %0, %struct.ctl_be_lun** %2, align 8
  %4 = load %struct.ctl_softc*, %struct.ctl_softc** @control_softc, align 8
  store %struct.ctl_softc* %4, %struct.ctl_softc** %3, align 8
  %5 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %5, i32 0, i32 1
  %7 = call i32 @mtx_lock(i32* %6)
  %8 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %8, i32 0, i32 0
  %10 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %2, align 8
  %11 = load i32, i32* @links, align 4
  %12 = call i32 @STAILQ_INSERT_TAIL(i32* %9, %struct.ctl_be_lun* %10, i32 %11)
  %13 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %13, i32 0, i32 1
  %15 = call i32 @mtx_unlock(i32* %14)
  %16 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %16, i32 0, i32 0
  %18 = call i32 @wakeup(i32* %17)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ctl_be_lun*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
