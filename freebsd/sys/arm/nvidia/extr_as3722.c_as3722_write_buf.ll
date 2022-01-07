; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_write_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i32, i32 }
%struct.iic_msg = type { i32, i32, i32, i32*, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_NOSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error when writing reg 0x%02X, rv: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_write_buf(%struct.as3722_softc* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.as3722_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [1 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.iic_msg], align 16
  store %struct.as3722_softc* %0, %struct.as3722_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %12, i64 0, i64 0
  %14 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 0
  store i32 0, i32* %14, align 16
  %15 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 1
  %16 = load i32, i32* @IIC_M_WR, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 2
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 3
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32* %19, i32** %18, align 16
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 4
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i64 1
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 0
  store i32 0, i32* %22, align 16
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 1
  %24 = load i32, i32* @IIC_M_WR, align 4
  %25 = load i32, i32* @IIC_M_NOSTART, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 2
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 3
  %31 = load i32*, i32** %8, align 8
  store i32* %31, i32** %30, align 16
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 4
  store i32 0, i32* %32, align 8
  %33 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %34 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %12, i64 0, i64 0
  %37 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %39 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %12, i64 0, i64 1
  %42 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %46 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %12, i64 0, i64 0
  %49 = call i32 @iicbus_transfer(i32 %47, %struct.iic_msg* %48, i32 2)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %4
  %53 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %54 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @EIO, align 4
  store i32 %59, i32* %5, align 4
  br label %61

60:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %52
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
