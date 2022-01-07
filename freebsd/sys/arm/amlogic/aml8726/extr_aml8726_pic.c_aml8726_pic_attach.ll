; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_pic.c_aml8726_pic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_pic.c_aml8726_pic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_pic_softc = type { i32, i32 }

@aml8726_pic_sc = common dso_local global %struct.aml8726_pic_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@aml8726_pic_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@AML_PIC_NCNTRLS = common dso_local global i32 0, align 4
@AML_PIC_0_MASK_REG = common dso_local global i64 0, align 8
@AML_PIC_0_STAT_CLR_REG = common dso_local global i64 0, align 8
@AML_PIC_0_FIRQ_SEL = common dso_local global i64 0, align 8
@aml8726_pic_eoi = common dso_local global i32 0, align 4
@arm_post_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_pic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_pic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_pic_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.aml8726_pic_softc* @device_get_softc(i32 %6)
  store %struct.aml8726_pic_softc* %7, %struct.aml8726_pic_softc** %4, align 8
  %8 = load %struct.aml8726_pic_softc*, %struct.aml8726_pic_softc** @aml8726_pic_sc, align 8
  %9 = icmp ne %struct.aml8726_pic_softc* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %60

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.aml8726_pic_softc*, %struct.aml8726_pic_softc** %4, align 8
  %15 = getelementptr inbounds %struct.aml8726_pic_softc, %struct.aml8726_pic_softc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @aml8726_pic_spec, align 4
  %18 = load %struct.aml8726_pic_softc*, %struct.aml8726_pic_softc** %4, align 8
  %19 = getelementptr inbounds %struct.aml8726_pic_softc, %struct.aml8726_pic_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @bus_alloc_resources(i32 %16, i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %60

27:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @AML_PIC_NCNTRLS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load %struct.aml8726_pic_softc*, %struct.aml8726_pic_softc** %4, align 8
  %34 = load i64, i64* @AML_PIC_0_MASK_REG, align 8
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 16
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @CSR_WRITE_4(%struct.aml8726_pic_softc* %33, i64 %38, i32 0)
  %40 = load %struct.aml8726_pic_softc*, %struct.aml8726_pic_softc** %4, align 8
  %41 = load i64, i64* @AML_PIC_0_STAT_CLR_REG, align 8
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 16
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = call i32 @CSR_WRITE_4(%struct.aml8726_pic_softc* %40, i64 %45, i32 -1)
  %47 = load %struct.aml8726_pic_softc*, %struct.aml8726_pic_softc** %4, align 8
  %48 = load i64, i64* @AML_PIC_0_FIRQ_SEL, align 8
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %49, 16
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = call i32 @CSR_WRITE_4(%struct.aml8726_pic_softc* %47, i64 %52, i32 0)
  br label %54

54:                                               ; preds = %32
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %28

57:                                               ; preds = %28
  %58 = load i32, i32* @aml8726_pic_eoi, align 4
  store i32 %58, i32* @arm_post_filter, align 4
  %59 = load %struct.aml8726_pic_softc*, %struct.aml8726_pic_softc** %4, align 8
  store %struct.aml8726_pic_softc* %59, %struct.aml8726_pic_softc** @aml8726_pic_sc, align 8
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %23, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.aml8726_pic_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_pic_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
