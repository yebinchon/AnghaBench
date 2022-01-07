; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_register_isrcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_register_isrcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_gic_softc = type { i32, %struct.gic_irqsrc*, i32 }
%struct.gic_irqsrc = type { i32, %struct.intr_irqsrc, i32, i32 }
%struct.intr_irqsrc = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@INTR_POLARITY_CONFORM = common dso_local global i32 0, align 4
@INTR_TRIGGER_CONFORM = common dso_local global i32 0, align 4
@GIC_LAST_SGI = common dso_local global i32 0, align 4
@INTR_ISRCF_IPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s,i%u\00", align 1
@GIC_FIRST_SGI = common dso_local global i64 0, align 8
@GIC_LAST_PPI = common dso_local global i32 0, align 4
@INTR_ISRCF_PPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s,p%u\00", align 1
@GIC_FIRST_PPI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s,s%u\00", align 1
@GIC_FIRST_SPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_gic_softc*, i32)* @arm_gic_register_isrcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_gic_register_isrcs(%struct.arm_gic_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arm_gic_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gic_irqsrc*, align 8
  %9 = alloca %struct.intr_irqsrc*, align 8
  %10 = alloca i8*, align 8
  store %struct.arm_gic_softc* %0, %struct.arm_gic_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 16
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.gic_irqsrc* @malloc(i32 %14, i32 %15, i32 %18)
  store %struct.gic_irqsrc* %19, %struct.gic_irqsrc** %8, align 8
  %20 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %21 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @device_get_nameunit(i32 %22)
  store i8* %23, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %104, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %107

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %30, i64 %32
  %34 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* @INTR_POLARITY_CONFORM, align 4
  %36 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %36, i64 %38
  %40 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %39, i32 0, i32 3
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* @INTR_TRIGGER_CONFORM, align 4
  %42 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %42, i64 %44
  %46 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %45, i32 0, i32 2
  store i32 %41, i32* %46, align 4
  %47 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %47, i64 %49
  %51 = getelementptr inbounds %struct.gic_irqsrc, %struct.gic_irqsrc* %50, i32 0, i32 1
  store %struct.intr_irqsrc* %51, %struct.intr_irqsrc** %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @GIC_LAST_SGI, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %28
  %56 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %9, align 8
  %57 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %58 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @INTR_ISRCF_IPI, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @GIC_FIRST_SGI, align 8
  %65 = sub nsw i64 %63, %64
  %66 = call i32 @intr_isrc_register(%struct.intr_irqsrc* %56, i32 %59, i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %61, i64 %65)
  store i32 %66, i32* %6, align 4
  br label %95

67:                                               ; preds = %28
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @GIC_LAST_PPI, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %9, align 8
  %73 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %74 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @INTR_ISRCF_PPI, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @GIC_FIRST_PPI, align 8
  %81 = sub nsw i64 %79, %80
  %82 = call i32 @intr_isrc_register(%struct.intr_irqsrc* %72, i32 %75, i32 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %77, i64 %81)
  store i32 %82, i32* %6, align 4
  br label %94

83:                                               ; preds = %67
  %84 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %9, align 8
  %85 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %86 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @GIC_FIRST_SPI, align 8
  %92 = sub nsw i64 %90, %91
  %93 = call i32 @intr_isrc_register(%struct.intr_irqsrc* %84, i32 %87, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %88, i64 %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %83, %71
  br label %95

95:                                               ; preds = %94, %55
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %8, align 8
  %100 = load i32, i32* @M_DEVBUF, align 4
  %101 = call i32 @free(%struct.gic_irqsrc* %99, i32 %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %114

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %24

107:                                              ; preds = %24
  %108 = load %struct.gic_irqsrc*, %struct.gic_irqsrc** %8, align 8
  %109 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %110 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %109, i32 0, i32 1
  store %struct.gic_irqsrc* %108, %struct.gic_irqsrc** %110, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %113 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %107, %98
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.gic_irqsrc* @malloc(i32, i32, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @intr_isrc_register(%struct.intr_irqsrc*, i32, i32, i8*, i8*, i64) #1

declare dso_local i32 @free(%struct.gic_irqsrc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
