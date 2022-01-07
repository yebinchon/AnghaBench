; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i32, i32 }
%struct.iic_msg = type { i32, i32, i32*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error when reading reg 0x%02X, rv: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_read(%struct.as3722_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.as3722_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.iic_msg], align 16
  store %struct.as3722_softc* %0, %struct.as3722_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %12 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 1
  %14 = load i32, i32* @IIC_M_WR, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %15, align 8
  %16 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 3
  %17 = ptrtoint i32* %8 to i32
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i32 0, i32 4
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %11, i64 1
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 1
  %22 = load i32, i32* @IIC_M_RD, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %23, align 8
  %24 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 3
  %25 = load i32*, i32** %7, align 8
  %26 = ptrtoint i32* %25 to i32
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %19, i32 0, i32 4
  store i32 0, i32* %27, align 4
  %28 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %29 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %34 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 1
  %37 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %40 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %10, i64 0, i64 0
  %43 = call i32 @iicbus_transfer(i32 %41, %struct.iic_msg* %42, i32 2)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %3
  %47 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %48 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %46
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
