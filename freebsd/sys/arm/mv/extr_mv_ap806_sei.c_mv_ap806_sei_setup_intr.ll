; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_sei.c_mv_ap806_sei_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.mv_ap806_sei_softc = type { i32 }
%struct.mv_ap806_sei_irqsrc = type { i64 }

@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @mv_ap806_sei_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_ap806_sei_setup_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intr_irqsrc*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.intr_map_data*, align 8
  %10 = alloca %struct.mv_ap806_sei_softc*, align 8
  %11 = alloca %struct.mv_ap806_sei_irqsrc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.mv_ap806_sei_softc* @device_get_softc(i32 %14)
  store %struct.mv_ap806_sei_softc* %15, %struct.mv_ap806_sei_softc** %10, align 8
  %16 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %17 = bitcast %struct.intr_irqsrc* %16 to %struct.mv_ap806_sei_irqsrc*
  store %struct.mv_ap806_sei_irqsrc* %17, %struct.mv_ap806_sei_irqsrc** %11, align 8
  %18 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %19 = icmp eq %struct.intr_map_data* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOTSUP, align 4
  store i32 %21, i32* %5, align 4
  br label %42

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %25 = call i32 @mv_ap806_sei_map(i32 %23, %struct.intr_map_data* %24, i64* %12)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %22
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %11, align 8
  %33 = getelementptr inbounds %struct.mv_ap806_sei_irqsrc, %struct.mv_ap806_sei_irqsrc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %5, align 4
  br label %42

38:                                               ; preds = %30
  %39 = load %struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_softc** %10, align 8
  %40 = load %struct.mv_ap806_sei_irqsrc*, %struct.mv_ap806_sei_irqsrc** %11, align 8
  %41 = call i32 @mv_ap806_sei_isrc_mask(%struct.mv_ap806_sei_softc* %39, %struct.mv_ap806_sei_irqsrc* %40, i32 0)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %36, %28, %20
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.mv_ap806_sei_softc* @device_get_softc(i32) #1

declare dso_local i32 @mv_ap806_sei_map(i32, %struct.intr_map_data*, i64*) #1

declare dso_local i32 @mv_ap806_sei_isrc_mask(%struct.mv_ap806_sei_softc*, %struct.mv_ap806_sei_irqsrc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
