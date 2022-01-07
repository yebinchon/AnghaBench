; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecounter = type { %struct.dmtpps_softc* }
%struct.dmtpps_softc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DMT_IRQSTATUS_RAW = common dso_local global i32 0, align 4
@DMT_IRQ_TCAR = common dso_local global i32 0, align 4
@DMT_TCAR1 = common dso_local global i32 0, align 4
@DMT_IRQSTATUS = common dso_local global i32 0, align 4
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timecounter*)* @dmtpps_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmtpps_poll(%struct.timecounter* %0) #0 {
  %2 = alloca %struct.timecounter*, align 8
  %3 = alloca %struct.dmtpps_softc*, align 8
  store %struct.timecounter* %0, %struct.timecounter** %2, align 8
  %4 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %5 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %4, i32 0, i32 0
  %6 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %5, align 8
  store %struct.dmtpps_softc* %6, %struct.dmtpps_softc** %3, align 8
  %7 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %8 = load i32, i32* @DMT_IRQSTATUS_RAW, align 4
  %9 = call i32 @DMTIMER_READ4(%struct.dmtpps_softc* %7, i32 %8)
  %10 = load i32, i32* @DMT_IRQ_TCAR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %15 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %14, i32 0, i32 1
  %16 = call i32 @pps_capture(%struct.TYPE_3__* %15)
  %17 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %18 = load i32, i32* @DMT_TCAR1, align 4
  %19 = call i32 @DMTIMER_READ4(%struct.dmtpps_softc* %17, i32 %18)
  %20 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %21 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %24 = load i32, i32* @DMT_IRQSTATUS, align 4
  %25 = load i32, i32* @DMT_IRQ_TCAR, align 4
  %26 = call i32 @DMTIMER_WRITE4(%struct.dmtpps_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %28 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %27, i32 0, i32 0
  %29 = call i32 @mtx_lock_spin(i32* %28)
  %30 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %31 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %30, i32 0, i32 1
  %32 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %33 = call i32 @pps_event(%struct.TYPE_3__* %31, i32 %32)
  %34 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %35 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %34, i32 0, i32 0
  %36 = call i32 @mtx_unlock_spin(i32* %35)
  br label %37

37:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @DMTIMER_READ4(%struct.dmtpps_softc*, i32) #1

declare dso_local i32 @pps_capture(%struct.TYPE_3__*) #1

declare dso_local i32 @DMTIMER_WRITE4(%struct.dmtpps_softc*, i32, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @pps_event(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
