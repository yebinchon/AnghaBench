; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.mv_ap806_sei_softc = type { i32 }
%struct.mv_ap806_sei_irqsrc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @mv_ap806_sei_teardown_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_ap806_sei_teardown_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_irqsrc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.intr_map_data*, align 8
  %9 = alloca %struct.mv_ap806_sei_softc*, align 8
  %10 = alloca %struct.mv_ap806_sei_irqsrc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.mv_ap806_sei_softc* @device_get_softc(i32 %11)
  store %struct.mv_ap806_sei_softc* %12, %struct.mv_ap806_sei_softc** %9, align 8
  %13 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %6, align 8
  %14 = bitcast %struct.intr_irqsrc* %13 to %struct.mv_ap806_sei_irqsrc*
  store %struct.mv_ap806_sei_irqsrc* %14, %struct.mv_ap806_sei_irqsrc** %10, align 8
  %15 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %9, align 8
  %16 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %10, align 8
  %17 = call i32 @mv_ap806_sei_isrc_mask(%struct.mv_ap806_sei_softc* %15, %struct.mv_ap806_sei_irqsrc* %16, i32 1)
  ret i32 0
}

declare dso_local %struct.mv_ap806_sei_softc* @device_get_softc(i32) #1

declare dso_local i32 @mv_ap806_sei_isrc_mask(%struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_irqsrc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
