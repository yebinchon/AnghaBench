; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_wugen.c_omap4_wugen_deactivate_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_wugen.c_omap4_wugen_deactivate_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.omap4_wugen_sc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @omap4_wugen_deactivate_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_wugen_deactivate_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_irqsrc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.intr_map_data*, align 8
  %9 = alloca %struct.omap4_wugen_sc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.omap4_wugen_sc* @device_get_softc(i32 %10)
  store %struct.omap4_wugen_sc* %11, %struct.omap4_wugen_sc** %9, align 8
  %12 = load %struct.omap4_wugen_sc*, %struct.omap4_wugen_sc** %9, align 8
  %13 = getelementptr inbounds %struct.omap4_wugen_sc, %struct.omap4_wugen_sc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %6, align 8
  %16 = load %struct.resource*, %struct.resource** %7, align 8
  %17 = load %struct.intr_map_data*, %struct.intr_map_data** %8, align 8
  %18 = call i32 @PIC_DEACTIVATE_INTR(i32 %14, %struct.intr_irqsrc* %15, %struct.resource* %16, %struct.intr_map_data* %17)
  ret i32 %18
}

declare dso_local %struct.omap4_wugen_sc* @device_get_softc(i32) #1

declare dso_local i32 @PIC_DEACTIVATE_INTR(i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
