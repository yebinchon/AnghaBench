; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.trapframe* }
%struct.trapframe = type { i32 }
%struct.bcm_lintc_softc = type { i32 }

@cpuid = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@BCM_LINTC_PENDING_MASK = common dso_local global i32 0, align 4
@BCM_LINTC_TIMER0_IRQ_MASK = common dso_local global i32 0, align 4
@BCM_LINTC_TIMER0_IRQ = common dso_local global i32 0, align 4
@BCM_LINTC_TIMER1_IRQ_MASK = common dso_local global i32 0, align 4
@BCM_LINTC_TIMER1_IRQ = common dso_local global i32 0, align 4
@BCM_LINTC_TIMER2_IRQ_MASK = common dso_local global i32 0, align 4
@BCM_LINTC_TIMER2_IRQ = common dso_local global i32 0, align 4
@BCM_LINTC_TIMER3_IRQ_MASK = common dso_local global i32 0, align 4
@BCM_LINTC_TIMER3_IRQ = common dso_local global i32 0, align 4
@BCM_LINTC_GPU_IRQ_MASK = common dso_local global i32 0, align 4
@BCM_LINTC_GPU_IRQ = common dso_local global i32 0, align 4
@BCM_LINTC_PMU_IRQ_MASK = common dso_local global i32 0, align 4
@BCM_LINTC_PMU_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown interrupt(s) %x\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Spurious interrupt detected\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@BCM_LINTC_MBOX0_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bcm_lintc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_lintc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bcm_lintc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.bcm_lintc_softc*
  store %struct.bcm_lintc_softc* %9, %struct.bcm_lintc_softc** %3, align 8
  %10 = load i32, i32* @cpuid, align 4
  %11 = call i32 @PCPU_GET(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.trapframe*, %struct.trapframe** %13, align 8
  store %struct.trapframe* %14, %struct.trapframe** %7, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %87, %1
  %16 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @BCM_LINTC_PENDING_REG(i32 %17)
  %19 = call i32 @bcm_lintc_read_4(%struct.bcm_lintc_softc* %16, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BCM_LINTC_PENDING_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %90

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @BCM_LINTC_TIMER0_IRQ_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %32 = load i32, i32* @BCM_LINTC_TIMER0_IRQ, align 4
  %33 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %34 = call i32 @bcm_lintc_irq_dispatch(%struct.bcm_lintc_softc* %31, i32 %32, %struct.trapframe* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @BCM_LINTC_TIMER1_IRQ_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %42 = load i32, i32* @BCM_LINTC_TIMER1_IRQ, align 4
  %43 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %44 = call i32 @bcm_lintc_irq_dispatch(%struct.bcm_lintc_softc* %41, i32 %42, %struct.trapframe* %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @BCM_LINTC_TIMER2_IRQ_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %52 = load i32, i32* @BCM_LINTC_TIMER2_IRQ, align 4
  %53 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %54 = call i32 @bcm_lintc_irq_dispatch(%struct.bcm_lintc_softc* %51, i32 %52, %struct.trapframe* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @BCM_LINTC_TIMER3_IRQ_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %62 = load i32, i32* @BCM_LINTC_TIMER3_IRQ, align 4
  %63 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %64 = call i32 @bcm_lintc_irq_dispatch(%struct.bcm_lintc_softc* %61, i32 %62, %struct.trapframe* %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @BCM_LINTC_GPU_IRQ_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %72 = load i32, i32* @BCM_LINTC_GPU_IRQ, align 4
  %73 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %74 = call i32 @bcm_lintc_irq_dispatch(%struct.bcm_lintc_softc* %71, i32 %72, %struct.trapframe* %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @BCM_LINTC_PMU_IRQ_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %82 = load i32, i32* @BCM_LINTC_PMU_IRQ, align 4
  %83 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %84 = call i32 @bcm_lintc_irq_dispatch(%struct.bcm_lintc_softc* %81, i32 %82, %struct.trapframe* %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = call i32 @arm_irq_memory_barrier(i32 0)
  br label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %15

90:                                               ; preds = %24
  %91 = load i32, i32* @BCM_LINTC_PENDING_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %99 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %115

103:                                              ; preds = %90
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i64, i64* @bootverbose, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %111 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %106, %103
  br label %115

115:                                              ; preds = %114, %97
  %116 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %116
}

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @bcm_lintc_read_4(%struct.bcm_lintc_softc*, i32) #1

declare dso_local i32 @BCM_LINTC_PENDING_REG(i32) #1

declare dso_local i32 @bcm_lintc_irq_dispatch(%struct.bcm_lintc_softc*, i32, %struct.trapframe*) #1

declare dso_local i32 @arm_irq_memory_barrier(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
