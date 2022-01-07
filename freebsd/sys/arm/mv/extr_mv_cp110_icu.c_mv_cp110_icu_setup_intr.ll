; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_icu.c_mv_cp110_icu_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_icu.c_mv_cp110_icu_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.mv_cp110_icu_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @mv_cp110_icu_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cp110_icu_setup_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intr_irqsrc*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.intr_map_data*, align 8
  %10 = alloca %struct.mv_cp110_icu_softc*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.mv_cp110_icu_softc* @device_get_softc(i32 %11)
  store %struct.mv_cp110_icu_softc* %12, %struct.mv_cp110_icu_softc** %10, align 8
  %13 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %10, align 8
  %14 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %15 = call %struct.intr_map_data* @mv_cp110_icu_convert_map_data(%struct.mv_cp110_icu_softc* %13, %struct.intr_map_data* %14)
  store %struct.intr_map_data* %15, %struct.intr_map_data** %9, align 8
  %16 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %17 = icmp eq %struct.intr_map_data* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %28

20:                                               ; preds = %4
  %21 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %10, align 8
  %22 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %25 = load %struct.resource*, %struct.resource** %8, align 8
  %26 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %27 = call i32 @PIC_SETUP_INTR(i32 %23, %struct.intr_irqsrc* %24, %struct.resource* %25, %struct.intr_map_data* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %20, %18
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.mv_cp110_icu_softc* @device_get_softc(i32) #1

declare dso_local %struct.intr_map_data* @mv_cp110_icu_convert_map_data(%struct.mv_cp110_icu_softc*, %struct.intr_map_data*) #1

declare dso_local i32 @PIC_SETUP_INTR(i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
