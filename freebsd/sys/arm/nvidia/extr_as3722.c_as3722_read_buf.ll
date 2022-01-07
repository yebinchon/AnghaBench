; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_read_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i32, i32 }
%struct.iic_msg = type { i32, i32, i32*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error when reading reg 0x%02X, rv: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_read_buf(%struct.as3722_softc* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.as3722_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.iic_msg], align 16
  store %struct.as3722_softc* %0, %struct.as3722_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %12, i64 0, i64 0
  %14 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 1
  %16 = load i32, i32* @IIC_M_WR, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %17, align 8
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 3
  %19 = ptrtoint i32* %10 to i32
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i32 0, i32 4
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %13, i64 1
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 1
  %24 = load i32, i32* @IIC_M_RD, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 2
  %26 = load i64, i64* %9, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %25, align 8
  %28 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 3
  %29 = load i32*, i32** %8, align 8
  %30 = ptrtoint i32* %29 to i32
  store i32 %30, i32* %28, align 8
  %31 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 4
  store i32 0, i32* %31, align 4
  %32 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %33 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %12, i64 0, i64 0
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %38 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %12, i64 0, i64 1
  %41 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %44 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %12, i64 0, i64 0
  %47 = call i32 @iicbus_transfer(i32 %45, %struct.iic_msg* %46, i32 2)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %4
  %51 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %52 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* @EIO, align 4
  store i32 %57, i32* %5, align 4
  br label %59

58:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
