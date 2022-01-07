; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl.c_twl_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl.c_twl_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_softc = type { i64* }
%struct.iic_msg = type { i64, i32, i32, i64* }

@TWL_INVALID_CHIP_ID = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"iicbus read failed (adr:0x%02x, reg:0x%02x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl_read(i32 %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.twl_softc*, align 8
  %13 = alloca [2 x %struct.iic_msg], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.twl_softc* @device_get_softc(i32 %16)
  store %struct.twl_softc* %17, %struct.twl_softc** %12, align 8
  %18 = load %struct.twl_softc*, %struct.twl_softc** %12, align 8
  %19 = call i32 @TWL_LOCK(%struct.twl_softc* %18)
  %20 = load %struct.twl_softc*, %struct.twl_softc** %12, align 8
  %21 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %14, align 8
  %26 = load %struct.twl_softc*, %struct.twl_softc** %12, align 8
  %27 = call i32 @TWL_UNLOCK(%struct.twl_softc* %26)
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* @TWL_INVALID_CHIP_ID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %6, align 4
  br label %70

33:                                               ; preds = %5
  %34 = load i64, i64* %14, align 8
  %35 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 16
  %37 = load i32, i32* @IIC_M_WR, align 4
  %38 = load i32, i32* @IIC_M_NOSTOP, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %41 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %43 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %45 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %44, i32 0, i32 3
  store i64* %9, i64** %45, align 16
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 1
  %48 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @IIC_M_RD, align 4
  %50 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 1
  %51 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 1
  %54 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i64*, i64** %10, align 8
  %56 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 1
  %57 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %56, i32 0, i32 3
  store i64* %55, i64** %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %13, i64 0, i64 0
  %60 = call i32 @iicbus_transfer(i32 %58, %struct.iic_msg* %59, i32 2)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %33
  %64 = load i32, i32* %7, align 4
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %66)
  %68 = load i32, i32* @EIO, align 4
  store i32 %68, i32* %6, align 4
  br label %70

69:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %63, %31
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.twl_softc* @device_get_softc(i32) #1

declare dso_local i32 @TWL_LOCK(%struct.twl_softc*) #1

declare dso_local i32 @TWL_UNLOCK(%struct.twl_softc*) #1

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
