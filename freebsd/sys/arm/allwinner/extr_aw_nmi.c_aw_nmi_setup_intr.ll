; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_nmi.c_aw_nmi_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_nmi.c_aw_nmi_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i64 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i64 }
%struct.intr_map_data_fdt = type { i32, i32 }
%struct.aw_nmi_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.aw_nmi_intr = type { i64, i32, i32 }

@INTR_MAP_DATA_FDT = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@NMI_IRQ_LOW_LEVEL = common dso_local global i32 0, align 4
@NMI_IRQ_HIGH_LEVEL = common dso_local global i32 0, align 4
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@NMI_IRQ_HIGH_EDGE = common dso_local global i32 0, align 4
@NMI_IRQ_LOW_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @aw_nmi_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_nmi_setup_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intr_irqsrc*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.intr_map_data*, align 8
  %10 = alloca %struct.intr_map_data_fdt*, align 8
  %11 = alloca %struct.aw_nmi_softc*, align 8
  %12 = alloca %struct.aw_nmi_intr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %9, align 8
  %18 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %19 = icmp eq %struct.intr_map_data* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %22 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INTR_MAP_DATA_FDT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %4
  %27 = load i32, i32* @ENOTSUP, align 4
  store i32 %27, i32* %5, align 4
  br label %112

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.aw_nmi_softc* @device_get_softc(i32 %29)
  store %struct.aw_nmi_softc* %30, %struct.aw_nmi_softc** %11, align 8
  %31 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %32 = bitcast %struct.intr_irqsrc* %31 to %struct.aw_nmi_intr*
  store %struct.aw_nmi_intr* %32, %struct.aw_nmi_intr** %12, align 8
  %33 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %34 = bitcast %struct.intr_map_data* %33 to %struct.intr_map_data_fdt*
  store %struct.intr_map_data_fdt* %34, %struct.intr_map_data_fdt** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %10, align 8
  %37 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %10, align 8
  %40 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @aw_nmi_map_fdt(i32 %35, i32 %38, i32 %41, i64* %15, i32* %17, i32* %16)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %5, align 4
  br label %112

47:                                               ; preds = %28
  %48 = load %struct.aw_nmi_intr*, %struct.aw_nmi_intr** %12, align 8
  %49 = getelementptr inbounds %struct.aw_nmi_intr, %struct.aw_nmi_intr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %5, align 4
  br label %112

55:                                               ; preds = %47
  %56 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %57 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.aw_nmi_intr*, %struct.aw_nmi_intr** %12, align 8
  %63 = getelementptr inbounds %struct.aw_nmi_intr, %struct.aw_nmi_intr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.aw_nmi_intr*, %struct.aw_nmi_intr** %12, align 8
  %69 = getelementptr inbounds %struct.aw_nmi_intr, %struct.aw_nmi_intr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66, %60
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %5, align 4
  br label %112

74:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %112

75:                                               ; preds = %55
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.aw_nmi_intr*, %struct.aw_nmi_intr** %12, align 8
  %78 = getelementptr inbounds %struct.aw_nmi_intr, %struct.aw_nmi_intr* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.aw_nmi_intr*, %struct.aw_nmi_intr** %12, align 8
  %81 = getelementptr inbounds %struct.aw_nmi_intr, %struct.aw_nmi_intr* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %75
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @NMI_IRQ_LOW_LEVEL, align 4
  store i32 %90, i32* %14, align 4
  br label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @NMI_IRQ_HIGH_LEVEL, align 4
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %91, %89
  br label %103

94:                                               ; preds = %75
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @NMI_IRQ_HIGH_EDGE, align 4
  store i32 %99, i32* %14, align 4
  br label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @NMI_IRQ_LOW_EDGE, align 4
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %100, %98
  br label %103

103:                                              ; preds = %102, %93
  %104 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %11, align 8
  %105 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %11, align 8
  %106 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @SC_NMI_WRITE(%struct.aw_nmi_softc* %104, i32 %109, i32 %110)
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %103, %74, %72, %53, %45, %26
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.aw_nmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @aw_nmi_map_fdt(i32, i32, i32, i64*, i32*, i32*) #1

declare dso_local i32 @SC_NMI_WRITE(%struct.aw_nmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
