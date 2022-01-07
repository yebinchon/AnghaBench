; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl190.c_pl190_intc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl190.c_pl190_intc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl190_intc_softc = type { i32, %struct.pl190_intc_irqsrc*, i32*, i32 }
%struct.pl190_intc_irqsrc = type { i32, i32 }
%struct.intr_pic = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"pl190\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Error: could not allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@VICINTSELECT = common dso_local global i32 0, align 4
@VICINTENCLEAR = common dso_local global i32 0, align 4
@VICPERIPHID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Peripheral ID: %08x\0A\00", align 1
@VICPRIMECELLID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"PrimeCell ID: %08x\0A\00", align 1
@VIC_NIRQS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@pl190_intc_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pl190_intc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl190_intc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pl190_intc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pl190_intc_irqsrc*, align 8
  %9 = alloca %struct.intr_pic*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.pl190_intc_softc* @device_get_softc(i32 %14)
  store %struct.pl190_intc_softc* %15, %struct.pl190_intc_softc** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %18 = getelementptr inbounds %struct.pl190_intc_softc, %struct.pl190_intc_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %20 = getelementptr inbounds %struct.pl190_intc_softc, %struct.pl190_intc_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %3, align 4
  %22 = call i8* @device_get_nameunit(i32 %21)
  %23 = load i32, i32* @MTX_SPIN, align 4
  %24 = call i32 @mtx_init(i32* %20, i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %7, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SYS_RES_MEMORY, align 4
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = call i32* @bus_alloc_resource_any(i32 %25, i32 %26, i32* %7, i32 %27)
  %29 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %30 = getelementptr inbounds %struct.pl190_intc_softc, %struct.pl190_intc_softc* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %32 = getelementptr inbounds %struct.pl190_intc_softc, %struct.pl190_intc_softc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %150

39:                                               ; preds = %1
  %40 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %41 = load i32, i32* @VICINTSELECT, align 4
  %42 = call i32 @INTC_VIC_WRITE_4(%struct.pl190_intc_softc* %40, i32 %41, i32 0)
  %43 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %44 = load i32, i32* @VICINTENCLEAR, align 4
  %45 = call i32 @INTC_VIC_WRITE_4(%struct.pl190_intc_softc* %43, i32 %44, i32 -1)
  store i32 0, i32* %5, align 4
  store i32 3, i32* %6, align 4
  br label %46

46:                                               ; preds = %61, %39
  %47 = load i32, i32* %6, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 %50, 8
  %52 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %53 = load i64, i64* @VICPERIPHID, align 8
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = call i32 @INTC_VIC_READ_4(%struct.pl190_intc_softc* %52, i64 %57)
  %59 = and i32 %58, 255
  %60 = or i32 %51, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %6, align 4
  br label %46

64:                                               ; preds = %46
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 0, i32* %5, align 4
  store i32 3, i32* %6, align 4
  br label %68

68:                                               ; preds = %83, %64
  %69 = load i32, i32* %6, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = shl i32 %72, 8
  %74 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %75 = load i64, i64* @VICPRIMECELLID, align 8
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %75, %78
  %80 = call i32 @INTC_VIC_READ_4(%struct.pl190_intc_softc* %74, i64 %79)
  %81 = and i32 %80, 255
  %82 = or i32 %73, %81
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %6, align 4
  br label %68

86:                                               ; preds = %68
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %91 = getelementptr inbounds %struct.pl190_intc_softc, %struct.pl190_intc_softc* %90, i32 0, i32 1
  %92 = load %struct.pl190_intc_irqsrc*, %struct.pl190_intc_irqsrc** %91, align 8
  store %struct.pl190_intc_irqsrc* %92, %struct.pl190_intc_irqsrc** %8, align 8
  %93 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %94 = getelementptr inbounds %struct.pl190_intc_softc, %struct.pl190_intc_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @device_get_nameunit(i32 %95)
  store i8* %96, i8** %12, align 8
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %124, %86
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @VIC_NIRQS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.pl190_intc_irqsrc*, %struct.pl190_intc_irqsrc** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.pl190_intc_irqsrc, %struct.pl190_intc_irqsrc* %103, i64 %105
  %107 = getelementptr inbounds %struct.pl190_intc_irqsrc, %struct.pl190_intc_irqsrc* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 4
  %108 = load %struct.pl190_intc_irqsrc*, %struct.pl190_intc_irqsrc** %8, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.pl190_intc_irqsrc, %struct.pl190_intc_irqsrc* %108, i64 %110
  %112 = getelementptr inbounds %struct.pl190_intc_irqsrc, %struct.pl190_intc_irqsrc* %111, i32 0, i32 1
  %113 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %114 = getelementptr inbounds %struct.pl190_intc_softc, %struct.pl190_intc_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @intr_isrc_register(i32* %112, i32 %115, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %101
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %2, align 4
  br label %150

123:                                              ; preds = %101
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %97

127:                                              ; preds = %97
  %128 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %129 = getelementptr inbounds %struct.pl190_intc_softc, %struct.pl190_intc_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ofw_bus_get_node(i32 %130)
  %132 = call i32 @OF_xref_from_node(i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %134 = getelementptr inbounds %struct.pl190_intc_softc, %struct.pl190_intc_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call %struct.intr_pic* @intr_pic_register(i32 %135, i32 %136)
  store %struct.intr_pic* %137, %struct.intr_pic** %9, align 8
  %138 = load %struct.intr_pic*, %struct.intr_pic** %9, align 8
  %139 = icmp eq %struct.intr_pic* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %127
  %141 = load i32, i32* @ENXIO, align 4
  store i32 %141, i32* %2, align 4
  br label %150

142:                                              ; preds = %127
  %143 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %144 = getelementptr inbounds %struct.pl190_intc_softc, %struct.pl190_intc_softc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* @pl190_intc_intr, align 4
  %148 = load %struct.pl190_intc_softc*, %struct.pl190_intc_softc** %4, align 8
  %149 = call i32 @intr_pic_claim_root(i32 %145, i32 %146, i32 %147, %struct.pl190_intc_softc* %148, i32 0)
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %142, %140, %121, %35
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.pl190_intc_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @INTC_VIC_WRITE_4(%struct.pl190_intc_softc*, i32, i32) #1

declare dso_local i32 @INTC_VIC_READ_4(%struct.pl190_intc_softc*, i64) #1

declare dso_local i32 @intr_isrc_register(i32*, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.intr_pic* @intr_pic_register(i32, i32) #1

declare dso_local i32 @intr_pic_claim_root(i32, i32, i32, %struct.pl190_intc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
