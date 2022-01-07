; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_nmi.c_aw_nmi_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_nmi.c_aw_nmi_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i64 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.aw_nmi_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@INTR_POLARITY_CONFORM = common dso_local global i32 0, align 4
@INTR_TRIGGER_CONFORM = common dso_local global i32 0, align 4
@NMI_IRQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @aw_nmi_teardown_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_nmi_teardown_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_irqsrc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.intr_map_data*, align 8
  %9 = alloca %struct.aw_nmi_softc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.aw_nmi_softc* @device_get_softc(i32 %10)
  store %struct.aw_nmi_softc* %11, %struct.aw_nmi_softc** %9, align 8
  %12 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %6, align 8
  %13 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  %17 = load i32, i32* @INTR_POLARITY_CONFORM, align 4
  %18 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %9, align 8
  %19 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @INTR_TRIGGER_CONFORM, align 4
  %22 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %9, align 8
  %23 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %9, align 8
  %26 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %9, align 8
  %27 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NMI_IRQ_ENABLE, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @SC_NMI_WRITE(%struct.aw_nmi_softc* %25, i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %16, %4
  ret i32 0
}

declare dso_local %struct.aw_nmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @SC_NMI_WRITE(%struct.aw_nmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
