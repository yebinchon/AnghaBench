; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtimer.c_am335x_dmtimer_et_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtimer.c_am335x_dmtimer_et_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_dmtimer_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_4__*, i32)*, i64 }

@DMT_IRQSTATUS = common dso_local global i32 0, align 4
@DMT_IRQ_OVF = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @am335x_dmtimer_et_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_dmtimer_et_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.am335x_dmtimer_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.am335x_dmtimer_softc*
  store %struct.am335x_dmtimer_softc* %5, %struct.am335x_dmtimer_softc** %3, align 8
  %6 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %3, align 8
  %7 = load i32, i32* @DMT_IRQSTATUS, align 4
  %8 = load i32, i32* @DMT_IRQ_OVF, align 4
  %9 = call i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %3, align 8
  %11 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %3, align 8
  %18 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %20, align 8
  %22 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %3, align 8
  %23 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.am335x_dmtimer_softc*, %struct.am335x_dmtimer_softc** %3, align 8
  %26 = getelementptr inbounds %struct.am335x_dmtimer_softc, %struct.am335x_dmtimer_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %21(%struct.TYPE_4__* %24, i32 %29)
  br label %31

31:                                               ; preds = %16, %1
  %32 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %32
}

declare dso_local i32 @DMTIMER_WRITE4(%struct.am335x_dmtimer_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
