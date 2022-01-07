; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pruss_irq_arg = type { i32, %struct.ti_pruss_softc* }
%struct.ti_pruss_softc = type { %struct.ti_pruss_irqsc* }
%struct.ti_pruss_irqsc = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.timespec = type { i32, i64 }

@TI_PRUSS_PRU_IRQS = common dso_local global i32 0, align 4
@PRUSS_INTC_HIER = common dso_local global i32 0, align 4
@PRUSS_INTC_HIDISR = common dso_local global i32 0, align 4
@PRUSS_INTC_SICR = common dso_local global i32 0, align 4
@PRUSS_INTC_HIEISR = common dso_local global i32 0, align 4
@TI_TS_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ti_pruss_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_pruss_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_pruss_irq_arg*, align 8
  %5 = alloca %struct.ti_pruss_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ti_pruss_irqsc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.timespec, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.ti_pruss_irq_arg*
  store %struct.ti_pruss_irq_arg* %14, %struct.ti_pruss_irq_arg** %4, align 8
  %15 = load %struct.ti_pruss_irq_arg*, %struct.ti_pruss_irq_arg** %4, align 8
  %16 = getelementptr inbounds %struct.ti_pruss_irq_arg, %struct.ti_pruss_irq_arg* %15, i32 0, i32 1
  %17 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %16, align 8
  store %struct.ti_pruss_softc* %17, %struct.ti_pruss_softc** %5, align 8
  %18 = load %struct.ti_pruss_irq_arg*, %struct.ti_pruss_irq_arg** %4, align 8
  %19 = getelementptr inbounds %struct.ti_pruss_irq_arg, %struct.ti_pruss_irq_arg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TI_PRUSS_PRU_IRQS, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %25, i32 0, i32 0
  %27 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %27, i64 %29
  %31 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %33, i32 0, i32 0
  %35 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %35, i64 %37
  %39 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %42 = load i32, i32* @PRUSS_INTC_HIER, align 4
  %43 = call i32 @ti_pruss_reg_read(%struct.ti_pruss_softc* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %1
  br label %113

49:                                               ; preds = %1
  %50 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %51 = load i32, i32* @PRUSS_INTC_HIDISR, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ti_pruss_reg_write(%struct.ti_pruss_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %55 = load i32, i32* @PRUSS_INTC_SICR, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ti_pruss_reg_write(%struct.ti_pruss_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %59 = load i32, i32* @PRUSS_INTC_HIEISR, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ti_pruss_reg_write(%struct.ti_pruss_softc* %58, i32 %59, i32 %60)
  %62 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %62, i32 0, i32 0
  %64 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %64, i64 %66
  store %struct.ti_pruss_irqsc* %67, %struct.ti_pruss_irqsc** %10, align 8
  %68 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %10, align 8
  %69 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %11, align 8
  %73 = call i32 @nanouptime(%struct.timespec* %12)
  %74 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 1000000000
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %77, %79
  %81 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %10, align 8
  %82 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 %80, i64* %86, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* @TI_TS_ARRAY, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %49
  store i64 0, i64* %11, align 8
  br label %92

92:                                               ; preds = %91, %49
  %93 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %10, align 8
  %94 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = call i32 @atomic_add_32(i32* %96, i32 1)
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %10, align 8
  %100 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i64 %98, i64* %102, align 8
  %103 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %10, align 8
  %104 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @KNOTE_UNLOCKED(i32* %105, i32 %106)
  %108 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %10, align 8
  %109 = call i32 @wakeup(%struct.ti_pruss_irqsc* %108)
  %110 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %10, align 8
  %111 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %110, i32 0, i32 2
  %112 = call i32 @selwakeup(%struct.TYPE_6__* %111)
  br label %113

113:                                              ; preds = %92, %48
  ret void
}

declare dso_local i32 @ti_pruss_reg_read(%struct.ti_pruss_softc*, i32) #1

declare dso_local i32 @ti_pruss_reg_write(%struct.ti_pruss_softc*, i32, i32) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

declare dso_local i32 @atomic_add_32(i32*, i32) #1

declare dso_local i32 @KNOTE_UNLOCKED(i32*, i32) #1

declare dso_local i32 @wakeup(%struct.ti_pruss_irqsc*) #1

declare dso_local i32 @selwakeup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
