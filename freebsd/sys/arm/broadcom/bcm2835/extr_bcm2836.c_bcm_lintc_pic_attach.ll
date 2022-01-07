; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_pic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2836.c_bcm_lintc_pic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_lintc_softc = type { i32, %struct.bcm_lintc_irqsrc* }
%struct.bcm_lintc_irqsrc = type { i64, i32, i32, i8* }
%struct.intr_pic = type { i32 }

@BCM_LINTC_NIRQS = common dso_local global i64 0, align 8
@INTR_ISRCF_PPI = common dso_local global i32 0, align 4
@INTR_ISRCF_IPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bcm_lintc_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_lintc_softc*)* @bcm_lintc_pic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_lintc_pic_attach(%struct.bcm_lintc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_lintc_softc*, align 8
  %4 = alloca %struct.bcm_lintc_irqsrc*, align 8
  %5 = alloca %struct.intr_pic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.bcm_lintc_softc* %0, %struct.bcm_lintc_softc** %3, align 8
  %11 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %11, i32 0, i32 1
  %13 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %12, align 8
  store %struct.bcm_lintc_irqsrc* %13, %struct.bcm_lintc_irqsrc** %4, align 8
  %14 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @device_get_nameunit(i32 %16)
  store i8* %17, i8** %9, align 8
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %97, %1
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @BCM_LINTC_NIRQS, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %100

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %24, i64 %25
  %27 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %26, i32 0, i32 0
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* %8, align 8
  switch i64 %28, label %75 [
    i64 131, label %29
    i64 130, label %36
    i64 129, label %43
    i64 128, label %50
    i64 136, label %57
    i64 135, label %57
    i64 134, label %57
    i64 133, label %57
    i64 137, label %63
    i64 132, label %69
  ]

29:                                               ; preds = %22
  %30 = call i8* @BCM_LINTC_TCR_IRQ_EN_TIMER(i32 0)
  %31 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %31, i64 %32
  %34 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %33, i32 0, i32 3
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* @INTR_ISRCF_PPI, align 4
  store i32 %35, i32* %7, align 4
  br label %80

36:                                               ; preds = %22
  %37 = call i8* @BCM_LINTC_TCR_IRQ_EN_TIMER(i32 1)
  %38 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %38, i64 %39
  %41 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %40, i32 0, i32 3
  store i8* %37, i8** %41, align 8
  %42 = load i32, i32* @INTR_ISRCF_PPI, align 4
  store i32 %42, i32* %7, align 4
  br label %80

43:                                               ; preds = %22
  %44 = call i8* @BCM_LINTC_TCR_IRQ_EN_TIMER(i32 2)
  %45 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %45, i64 %46
  %48 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %47, i32 0, i32 3
  store i8* %44, i8** %48, align 8
  %49 = load i32, i32* @INTR_ISRCF_PPI, align 4
  store i32 %49, i32* %7, align 4
  br label %80

50:                                               ; preds = %22
  %51 = call i8* @BCM_LINTC_TCR_IRQ_EN_TIMER(i32 3)
  %52 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %52, i64 %53
  %55 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %54, i32 0, i32 3
  store i8* %51, i8** %55, align 8
  %56 = load i32, i32* @INTR_ISRCF_PPI, align 4
  store i32 %56, i32* %7, align 4
  br label %80

57:                                               ; preds = %22, %22, %22, %22
  %58 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %58, i64 %59
  %61 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %60, i32 0, i32 2
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* @INTR_ISRCF_IPI, align 4
  store i32 %62, i32* %7, align 4
  br label %80

63:                                               ; preds = %22
  %64 = call i32 @BCM_LINTC_GIRR_IRQ_CORE(i32 0)
  %65 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %65, i64 %66
  %68 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 4
  store i32 0, i32* %7, align 4
  br label %80

69:                                               ; preds = %22
  %70 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %70, i64 %71
  %73 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %72, i32 0, i32 2
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* @INTR_ISRCF_PPI, align 4
  store i32 %74, i32* %7, align 4
  br label %80

75:                                               ; preds = %22
  %76 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %76, i64 %77
  %79 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %78, i32 0, i32 2
  store i32 0, i32* %79, align 4
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %69, %63, %57, %50, %43, %36, %29
  %81 = load %struct.bcm_lintc_irqsrc*, %struct.bcm_lintc_irqsrc** %4, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %81, i64 %82
  %84 = getelementptr inbounds %struct.bcm_lintc_irqsrc, %struct.bcm_lintc_irqsrc* %83, i32 0, i32 1
  %85 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %86 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @intr_isrc_register(i32* %84, i32 %87, i32 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %89, i64 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %80
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %123

96:                                               ; preds = %80
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %8, align 8
  br label %18

100:                                              ; preds = %18
  %101 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %102 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ofw_bus_get_node(i32 %103)
  %105 = call i64 @OF_xref_from_node(i32 %104)
  store i64 %105, i64* %10, align 8
  %106 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %107 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call %struct.intr_pic* @intr_pic_register(i32 %108, i64 %109)
  store %struct.intr_pic* %110, %struct.intr_pic** %5, align 8
  %111 = load %struct.intr_pic*, %struct.intr_pic** %5, align 8
  %112 = icmp eq %struct.intr_pic* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %2, align 4
  br label %123

115:                                              ; preds = %100
  %116 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %117 = getelementptr inbounds %struct.bcm_lintc_softc, %struct.bcm_lintc_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i32, i32* @bcm_lintc_intr, align 4
  %121 = load %struct.bcm_lintc_softc*, %struct.bcm_lintc_softc** %3, align 8
  %122 = call i32 @intr_pic_claim_root(i32 %118, i64 %119, i32 %120, %struct.bcm_lintc_softc* %121, i32 0)
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %115, %113, %94
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i8* @BCM_LINTC_TCR_IRQ_EN_TIMER(i32) #1

declare dso_local i32 @BCM_LINTC_GIRR_IRQ_CORE(i32) #1

declare dso_local i32 @intr_isrc_register(i32*, i32, i32, i8*, i8*, i64) #1

declare dso_local i64 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.intr_pic* @intr_pic_register(i32, i64) #1

declare dso_local i32 @intr_pic_claim_root(i32, i64, i32, %struct.bcm_lintc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
