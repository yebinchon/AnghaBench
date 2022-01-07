; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_intr.c_bcm_intc_pic_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_intr.c_bcm_intc_pic_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_intc_softc = type { i32, %struct.bcm_intc_irqsrc* }
%struct.bcm_intc_irqsrc = type { i64, i32, i32, i32, i32 }

@BCM_INTC_NIRQS = common dso_local global i64 0, align 8
@INTC_DISABLE_BASIC = common dso_local global i32 0, align 4
@INTC_ENABLE_BASIC = common dso_local global i32 0, align 4
@INTC_DISABLE_BANK1 = common dso_local global i32 0, align 4
@INTC_ENABLE_BANK1 = common dso_local global i32 0, align 4
@INTC_DISABLE_BANK2 = common dso_local global i32 0, align 4
@INTC_ENABLE_BANK2 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_intc_softc*, i64)* @bcm_intc_pic_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_intc_pic_register(%struct.bcm_intc_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_intc_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bcm_intc_irqsrc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.bcm_intc_softc* %0, %struct.bcm_intc_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @device_get_nameunit(i32 %12)
  store i8* %13, i8** %9, align 8
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %92, %2
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @BCM_INTC_NIRQS, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %95

18:                                               ; preds = %14
  %19 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %20 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %19, i32 0, i32 1
  %21 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %21, i64 %22
  store %struct.bcm_intc_irqsrc* %23, %struct.bcm_intc_irqsrc** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %6, align 8
  %26 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @IS_IRQ_BASIC(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %18
  %31 = load i32, i32* @INTC_DISABLE_BASIC, align 4
  %32 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %6, align 8
  %33 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @INTC_ENABLE_BASIC, align 4
  %35 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %6, align 8
  %36 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 1, %38
  %40 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %6, align 8
  %41 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %78

42:                                               ; preds = %18
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @IS_IRQ_BANK1(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32, i32* @INTC_DISABLE_BANK1, align 4
  %48 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %6, align 8
  %49 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @INTC_ENABLE_BANK1, align 4
  %51 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %6, align 8
  %52 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @IRQ_BANK1(i64 %53)
  %55 = shl i32 1, %54
  %56 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %6, align 8
  %57 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  br label %77

58:                                               ; preds = %42
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @IS_IRQ_BANK2(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32, i32* @INTC_DISABLE_BANK2, align 4
  %64 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %6, align 8
  %65 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @INTC_ENABLE_BANK2, align 4
  %67 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %6, align 8
  %68 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @IRQ_BANK2(i64 %69)
  %71 = shl i32 1, %70
  %72 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %6, align 8
  %73 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  br label %76

74:                                               ; preds = %58
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %3, align 4
  br label %105

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %46
  br label %78

78:                                               ; preds = %77, %30
  %79 = load %struct.bcm_intc_irqsrc*, %struct.bcm_intc_irqsrc** %6, align 8
  %80 = getelementptr inbounds %struct.bcm_intc_irqsrc, %struct.bcm_intc_irqsrc* %79, i32 0, i32 2
  %81 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %82 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @intr_isrc_register(i32* %80, i32 %83, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %84, i64 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %105

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %14

95:                                               ; preds = %14
  %96 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %97 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i32* @intr_pic_register(i32 %98, i64 %99)
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @ENXIO, align 4
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %102, %89, %74
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i64 @IS_IRQ_BASIC(i64) #1

declare dso_local i64 @IS_IRQ_BANK1(i64) #1

declare dso_local i32 @IRQ_BANK1(i64) #1

declare dso_local i64 @IS_IRQ_BANK2(i64) #1

declare dso_local i32 @IRQ_BANK2(i64) #1

declare dso_local i32 @intr_isrc_register(i32*, i32, i32, i8*, i8*, i64) #1

declare dso_local i32* @intr_pic_register(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
