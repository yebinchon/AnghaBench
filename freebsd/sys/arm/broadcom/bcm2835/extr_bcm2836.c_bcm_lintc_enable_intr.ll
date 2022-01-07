; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.bcm_lintc_irqsrc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.intr_irqsrc*)* @bcm_lintc_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_lintc_enable_intr(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.bcm_lintc_irqsrc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %4, align 8
  %6 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %7 = bitcast %struct.intr_irqsrc* %6 to %struct.bcm_lintc_irqsrc*
  store %struct.bcm_lintc_irqsrc* %7, %struct.bcm_lintc_irqsrc** %5, align 8
  %8 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %5, align 8
  %9 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @arm_irq_memory_barrier(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_softc(i32 %12)
  %14 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %5, align 8
  %15 = call i32 @bcm_lintc_unmask(i32 %13, %struct.bcm_lintc_irqsrc* %14)
  ret void
}

declare dso_local i32 @arm_irq_memory_barrier(i32) #1

declare dso_local i32 @bcm_lintc_unmask(i32, %struct.bcm_lintc_irqsrc*) #1

declare dso_local i32 @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
