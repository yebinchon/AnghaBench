; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_intr.c_bcm_intc_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_intr.c_bcm_intc_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i64 }
%struct.intr_irqsrc = type { i32 }
%struct.intr_map_data_fdt = type { i32, i64* }
%struct.bcm_intc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intr_irqsrc }

@INTR_MAP_DATA_FDT = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@BANK1_START = common dso_local global i64 0, align 8
@BANK1_END = common dso_local global i64 0, align 8
@BANK2_START = common dso_local global i32 0, align 4
@BANK2_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"invalid IRQ config: bank=%d, irq=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BCM_INTC_NIRQS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @bcm_intc_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_intc_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_map_data*, align 8
  %7 = alloca %struct.intr_irqsrc**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.intr_map_data_fdt*, align 8
  %10 = alloca %struct.bcm_intc_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %6, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %7, align 8
  %12 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %13 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INTR_MAP_DATA_FDT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOTSUP, align 4
  store i32 %18, i32* %4, align 4
  br label %119

19:                                               ; preds = %3
  %20 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %21 = bitcast %struct.intr_map_data* %20 to %struct.intr_map_data_fdt*
  store %struct.intr_map_data_fdt* %21, %struct.intr_map_data_fdt** %9, align 8
  %22 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %23 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %28 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  br label %103

32:                                               ; preds = %19
  %33 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %34 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %100

37:                                               ; preds = %32
  store i32 1, i32* %11, align 4
  %38 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %39 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  switch i64 %42, label %81 [
    i64 0, label %43
    i64 1, label %54
    i64 2, label %67
  ]

43:                                               ; preds = %37
  %44 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %45 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @BANK1_START, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %43
  br label %82

54:                                               ; preds = %37
  %55 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %56 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BANK1_START, align 8
  %61 = add i64 %59, %60
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @BANK1_END, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %65, %54
  br label %82

67:                                               ; preds = %37
  %68 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %69 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @BANK2_START, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %72, %74
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @BANK2_END, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %79, %67
  br label %82

81:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %80, %66, %53
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %88 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %93 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %96)
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %4, align 4
  br label %119

99:                                               ; preds = %82
  br label %102

100:                                              ; preds = %32
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %4, align 4
  br label %119

102:                                              ; preds = %99
  br label %103

103:                                              ; preds = %102, %26
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* @BCM_INTC_NIRQS, align 8
  %106 = icmp uge i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %4, align 4
  br label %119

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  %111 = call %struct.bcm_intc_softc* @device_get_softc(i32 %110)
  store %struct.bcm_intc_softc* %111, %struct.bcm_intc_softc** %10, align 8
  %112 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %10, align 8
  %113 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  store %struct.intr_irqsrc* %117, %struct.intr_irqsrc** %118, align 8
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %109, %107, %100, %85, %17
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

declare dso_local %struct.bcm_intc_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
