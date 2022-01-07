; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_gic_map_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_gic_map_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data_msi = type { i64 }
%struct.gic_irqsrc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data_msi*, i32*, i32*, i32*)* @gic_map_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_map_msi(i32 %0, %struct.intr_map_data_msi* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intr_map_data_msi*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.gic_irqsrc*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.intr_map_data_msi* %1, %struct.intr_map_data_msi** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.intr_map_data_msi*, %struct.intr_map_data_msi** %8, align 8
  %14 = getelementptr inbounds %struct.intr_map_data_msi, %struct.intr_map_data_msi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.gic_irqsrc*
  store %struct.gic_irqsrc* %16, %struct.gic_irqsrc** %12, align 8
  %17 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %12, align 8
  %18 = icmp eq %struct.gic_irqsrc* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %6, align 4
  br label %30

21:                                               ; preds = %5
  %22 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %12, align 8
  %23 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %27 = load i32*, i32** %10, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %29 = load i32*, i32** %11, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %21, %19
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
