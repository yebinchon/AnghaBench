; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_cec_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_cec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda19988_softc = type { i32, i32 }
%struct.iic_msg = type { i32, i32*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"tda19988_cec_read failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda19988_softc*, i32, i32*)* @tda19988_cec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda19988_cec_read(%struct.tda19988_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.tda19988_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.iic_msg], align 16
  store %struct.tda19988_softc* %0, %struct.tda19988_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 0
  %10 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 0
  %11 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %12 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 8
  %14 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 1
  %15 = load i32, i32* @IIC_M_WR, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %14, align 8
  %18 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 2
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 3
  %20 = ptrtoint i32* %5 to i32
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i64 1
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 0
  %23 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %24 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 8
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 1
  %27 = load i32, i32* @IIC_M_RD, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %26, align 8
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 2
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %21, i32 0, i32 3
  %32 = load i32*, i32** %6, align 8
  %33 = ptrtoint i32* %32 to i32
  store i32 %33, i32* %31, align 4
  %34 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %35 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %8, i64 0, i64 0
  %38 = call i32 @iicbus_transfer(i32 %36, %struct.iic_msg* %37, i32 2)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %3
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
