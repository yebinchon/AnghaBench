; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_reg_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda19988_softc = type { i64, i32, i32 }
%struct.iic_msg = type { i32, i32*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"tda19988_reg_read failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda19988_softc*, i32, i32*)* @tda19988_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda19988_reg_read(%struct.tda19988_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.tda19988_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.iic_msg], align 16
  store %struct.tda19988_softc* %0, %struct.tda19988_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %9, i64 0, i64 0
  %11 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %10, i32 0, i32 0
  %12 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %13 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 8
  %15 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %10, i32 0, i32 1
  %16 = load i32, i32* @IIC_M_WR, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %15, align 8
  %19 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %10, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %10, i32 0, i32 3
  %21 = ptrtoint i32* %7 to i32
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %10, i64 1
  %23 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 0
  %24 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %25 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 8
  %27 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 1
  %28 = load i32, i32* @IIC_M_RD, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %27, align 8
  %31 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %22, i32 0, i32 3
  %33 = load i32*, i32** %6, align 8
  %34 = ptrtoint i32* %33 to i32
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @REGADDR(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %38 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @REGPAGE(i32 %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @REGPAGE(i32 %45)
  %47 = call i32 @tda19988_set_page(%struct.tda19988_softc* %44, i64 %46)
  br label %48

48:                                               ; preds = %43, %3
  %49 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %50 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [2 x %struct.iic_msg], [2 x %struct.iic_msg]* %9, i64 0, i64 0
  %53 = call i32 @iicbus_transfer(i32 %51, %struct.iic_msg* %52, i32 2)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %58 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %48
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @REGADDR(i32) #1

declare dso_local i64 @REGPAGE(i32) #1

declare dso_local i32 @tda19988_set_page(%struct.tda19988_softc*, i64) #1

declare dso_local i32 @iicbus_transfer(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
