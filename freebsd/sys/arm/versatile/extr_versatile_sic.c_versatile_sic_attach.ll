; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_sic.c_versatile_sic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_sic.c_versatile_sic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.versatile_sic_softc = type { i32, %struct.versatile_sic_irqsrc*, i32, i32*, i32*, i32 }
%struct.versatile_sic_irqsrc = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"sic\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Error: could not allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"could not allocate IRQ resources\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@versatile_sic_filter = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"unable to register interrupt handler\0A\00", align 1
@SIC_ENCLR = common dso_local global i32 0, align 4
@SIC_NIRQS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @versatile_sic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @versatile_sic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.versatile_sic_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.versatile_sic_irqsrc*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.versatile_sic_softc* @device_get_softc(i32 %10)
  store %struct.versatile_sic_softc* %11, %struct.versatile_sic_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %14 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %16 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %15, i32 0, i32 5
  %17 = load i32, i32* %3, align 4
  %18 = call i8* @device_get_nameunit(i32 %17)
  %19 = load i32, i32* @MTX_SPIN, align 4
  %20 = call i32 @mtx_init(i32* %16, i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SYS_RES_MEMORY, align 4
  %23 = load i32, i32* @RF_ACTIVE, align 4
  %24 = call i8* @bus_alloc_resource_any(i32 %21, i32 %22, i32* %5, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %27 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %26, i32 0, i32 4
  store i32* %25, i32** %27, align 8
  %28 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %29 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %117

36:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SYS_RES_IRQ, align 4
  %39 = load i32, i32* @RF_ACTIVE, align 4
  %40 = call i8* @bus_alloc_resource_any(i32 %37, i32 %38, i32* %5, i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %43 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  %44 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %45 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @versatile_sic_detach(i32 %51)
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %117

54:                                               ; preds = %36
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %57 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @INTR_TYPE_MISC, align 4
  %60 = load i32, i32* @versatile_sic_filter, align 4
  %61 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %62 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %63 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %62, i32 0, i32 2
  %64 = call i64 @bus_setup_intr(i32 %55, i32* %58, i32 %59, i32 %60, i32* null, %struct.versatile_sic_softc* %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @versatile_sic_detach(i32 %69)
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %2, align 4
  br label %117

72:                                               ; preds = %54
  %73 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %74 = load i32, i32* @SIC_ENCLR, align 4
  %75 = call i32 @SIC_WRITE_4(%struct.versatile_sic_softc* %73, i32 %74, i32 -1)
  %76 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %77 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %76, i32 0, i32 1
  %78 = load %struct.versatile_sic_irqsrc*, %struct.versatile_sic_irqsrc** %77, align 8
  store %struct.versatile_sic_irqsrc* %78, %struct.versatile_sic_irqsrc** %9, align 8
  %79 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %80 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @device_get_nameunit(i32 %81)
  store i8* %82, i8** %8, align 8
  store i64 0, i64* %7, align 8
  br label %83

83:                                               ; preds = %108, %72
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @SIC_NIRQS, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.versatile_sic_irqsrc*, %struct.versatile_sic_irqsrc** %9, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.versatile_sic_irqsrc, %struct.versatile_sic_irqsrc* %89, i64 %90
  %92 = getelementptr inbounds %struct.versatile_sic_irqsrc, %struct.versatile_sic_irqsrc* %91, i32 0, i32 0
  store i64 %88, i64* %92, align 8
  %93 = load %struct.versatile_sic_irqsrc*, %struct.versatile_sic_irqsrc** %9, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds %struct.versatile_sic_irqsrc, %struct.versatile_sic_irqsrc* %93, i64 %94
  %96 = getelementptr inbounds %struct.versatile_sic_irqsrc, %struct.versatile_sic_irqsrc* %95, i32 0, i32 1
  %97 = load %struct.versatile_sic_softc*, %struct.versatile_sic_softc** %4, align 8
  %98 = getelementptr inbounds %struct.versatile_sic_softc, %struct.versatile_sic_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @intr_isrc_register(i32* %96, i32 %99, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %100, i64 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %87
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %117

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %7, align 8
  br label %83

111:                                              ; preds = %83
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @ofw_bus_get_node(i32 %113)
  %115 = call i32 @OF_xref_from_node(i32 %114)
  %116 = call i32 @intr_pic_register(i32 %112, i32 %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %105, %66, %48, %32
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.versatile_sic_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @versatile_sic_detach(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.versatile_sic_softc*, i32*) #1

declare dso_local i32 @SIC_WRITE_4(%struct.versatile_sic_softc*, i32, i32) #1

declare dso_local i32 @intr_isrc_register(i32*, i32, i32, i8*, i8*, i64) #1

declare dso_local i32 @intr_pic_register(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
