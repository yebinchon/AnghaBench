; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.trapframe* }
%struct.trapframe = type { i32 }
%struct.arm_gic_softc = type { i32, i32*, i32, %struct.gic_irqsrc* }
%struct.gic_irqsrc = type { i64, i32, i32 }

@GICC_IAR = common dso_local global i32 0, align 4
@gic_debug_spurious = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Spurious interrupt detected: last irq: %d on CPU%d\0A\00", align 1
@cpuid = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@GIC_LAST_SGI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"SGI %u on UP system detected\0A\00", align 1
@GIC_FIRST_SGI = common dso_local global i32 0, align 4
@GICC_EOIR = common dso_local global i32 0, align 4
@GI_FLAG_EARLY_EOI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Stray irq %u disabled\0A\00", align 1
@sgi_to_ipi = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_gic_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.arm_gic_softc*, align 8
  %5 = alloca %struct.gic_irqsrc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.trapframe*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.arm_gic_softc*
  store %struct.arm_gic_softc* %10, %struct.arm_gic_softc** %4, align 8
  %11 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %12 = load i32, i32* @GICC_IAR, align 4
  %13 = call i32 @gic_c_read_4(%struct.arm_gic_softc* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 1023
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %18 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = load i64, i64* @gic_debug_spurious, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %26 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %29 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @cpuid, align 4
  %32 = call i64 @PCPU_GET(i32 %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @cpuid, align 4
  %36 = call i64 @PCPU_GET(i32 %35)
  %37 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %36)
  br label %38

38:                                               ; preds = %24, %21
  %39 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %39, i32* %2, align 4
  br label %135

40:                                               ; preds = %1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.trapframe*, %struct.trapframe** %42, align 8
  store %struct.trapframe* %43, %struct.trapframe** %8, align 8
  br label %44

44:                                               ; preds = %132, %40
  %45 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %46 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %45, i32 0, i32 3
  %47 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %47, i64 %49
  store %struct.gic_irqsrc* %50, %struct.gic_irqsrc** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @GIC_LAST_SGI, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %44
  %55 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %56 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @GIC_FIRST_SGI, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %63 = load i32, i32* @GICC_EOIR, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @gic_c_write_4(%struct.arm_gic_softc* %62, i32 %63, i32 %64)
  br label %119

66:                                               ; preds = %44
  %67 = load i64, i64* @gic_debug_spurious, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %72 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @cpuid, align 4
  %75 = call i64 @PCPU_GET(i32 %74)
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %66
  %78 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %5, align 8
  %79 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @GI_FLAG_EARLY_EOI, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @GI_FLAG_EARLY_EOI, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %87 = load i32, i32* @GICC_EOIR, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @gic_c_write_4(%struct.arm_gic_softc* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %77
  %91 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %5, align 8
  %92 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %91, i32 0, i32 2
  %93 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %94 = call i64 @intr_isrc_dispatch(i32* %92, %struct.trapframe* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %90
  %97 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @gic_irq_mask(%struct.arm_gic_softc* %97, i32 %98)
  %100 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %5, align 8
  %101 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @GI_FLAG_EARLY_EOI, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @GI_FLAG_EARLY_EOI, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %96
  %108 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %109 = load i32, i32* @GICC_EOIR, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @gic_c_write_4(%struct.arm_gic_softc* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %96
  %113 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %114 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %90
  br label %119

119:                                              ; preds = %118, %54
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @arm_irq_memory_barrier(i32 %120)
  %122 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %123 = load i32, i32* @GICC_IAR, align 4
  %124 = call i32 @gic_c_read_4(%struct.arm_gic_softc* %122, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, 1023
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %129 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %119
  br label %44

133:                                              ; preds = %119
  %134 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %38
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @gic_c_read_4(%struct.arm_gic_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @gic_c_write_4(%struct.arm_gic_softc*, i32, i32) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, %struct.trapframe*) #1

declare dso_local i32 @gic_irq_mask(%struct.arm_gic_softc*, i32) #1

declare dso_local i32 @arm_irq_memory_barrier(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
