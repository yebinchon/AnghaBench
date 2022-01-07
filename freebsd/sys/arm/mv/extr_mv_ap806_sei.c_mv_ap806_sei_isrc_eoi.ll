; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_isrc_eoi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_isrc_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_ap806_sei_softc = type { i32 }
%struct.mv_ap806_sei_irqsrc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_irqsrc*)* @mv_ap806_sei_isrc_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_ap806_sei_isrc_eoi(%struct.mv_ap806_sei_softc* %0, %struct.mv_ap806_sei_irqsrc* %1) #0 {
  %3 = alloca %struct.mv_ap806_sei_softc*, align 8
  %4 = alloca %struct.mv_ap806_sei_irqsrc*, align 8
  store %struct.mv_ap806_sei_softc* %0, %struct.mv_ap806_sei_softc** %3, align 8
  store %struct.mv_ap806_sei_irqsrc* %1, %struct.mv_ap806_sei_irqsrc** %4, align 8
  %5 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %3, align 8
  %6 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %4, align 8
  %7 = getelementptr inbounds %struct.mv_ap806_sei_irqsrc, %struct.mv_ap806_sei_irqsrc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @GICP_SECR(i32 %8)
  %10 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %4, align 8
  %11 = getelementptr inbounds %struct.mv_ap806_sei_irqsrc, %struct.mv_ap806_sei_irqsrc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @GICP_SECR_BIT(i32 %12)
  %14 = call i32 @WR4(%struct.mv_ap806_sei_softc* %5, i32 %9, i32 %13)
  ret void
}

declare dso_local i32 @WR4(%struct.mv_ap806_sei_softc*, i32, i32) #1

declare dso_local i32 @GICP_SECR(i32) #1

declare dso_local i32 @GICP_SECR_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
