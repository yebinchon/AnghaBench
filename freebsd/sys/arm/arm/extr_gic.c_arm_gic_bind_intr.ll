; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_bind_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_bind_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.arm_gic_softc = type { i32 }
%struct.gic_irqsrc = type { i64 }

@GIC_FIRST_SPI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@gic_irq_cpu = common dso_local global i32 0, align 4
@all_cpus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*)* @arm_gic_bind_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_gic_bind_intr(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.intr_irqsrc*, align 8
  %6 = alloca %struct.arm_gic_softc*, align 8
  %7 = alloca %struct.gic_irqsrc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.arm_gic_softc* @device_get_softc(i32 %8)
  store %struct.arm_gic_softc* %9, %struct.arm_gic_softc** %6, align 8
  %10 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %5, align 8
  %11 = bitcast %struct.intr_irqsrc* %10 to %struct.gic_irqsrc*
  store %struct.gic_irqsrc* %11, %struct.gic_irqsrc** %7, align 8
  %12 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %7, align 8
  %13 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GIC_FIRST_SPI, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %5, align 8
  %21 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %20, i32 0, i32 0
  %22 = call i64 @CPU_EMPTY(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* @gic_irq_cpu, align 4
  %26 = call i32 @intr_irq_next_cpu(i32 %25, i32* @all_cpus)
  store i32 %26, i32* @gic_irq_cpu, align 4
  %27 = load i32, i32* @gic_irq_cpu, align 4
  %28 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %5, align 8
  %29 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %28, i32 0, i32 0
  %30 = call i32 @CPU_SETOF(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %6, align 8
  %33 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %7, align 8
  %34 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %5, align 8
  %37 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %36, i32 0, i32 0
  %38 = call i32 @gic_bind(%struct.arm_gic_softc* %32, i64 %35, i32* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.arm_gic_softc* @device_get_softc(i32) #1

declare dso_local i64 @CPU_EMPTY(i32*) #1

declare dso_local i32 @intr_irq_next_cpu(i32, i32*) #1

declare dso_local i32 @CPU_SETOF(i32, i32*) #1

declare dso_local i32 @gic_bind(%struct.arm_gic_softc*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
