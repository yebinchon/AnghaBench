; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_reg_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_tda19988.c_tda19988_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda19988_softc = type { i64, i32, i32 }
%struct.iic_msg = type { i32, i32*, i32, i32 }

@IIC_M_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tda19988_reg_write failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda19988_softc*, i32, i32)* @tda19988_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda19988_reg_write(%struct.tda19988_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tda19988_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x %struct.iic_msg], align 16
  store %struct.tda19988_softc* %0, %struct.tda19988_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %9, i64 0, i64 0
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
  store i32 2, i32* %19, align 8
  %20 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %10, i32 0, i32 3
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %22 = ptrtoint i32* %21 to i32
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @REGADDR(i32 %23)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %29 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @REGPAGE(i32 %31)
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @REGPAGE(i32 %36)
  %38 = call i32 @tda19988_set_page(%struct.tda19988_softc* %35, i64 %37)
  br label %39

39:                                               ; preds = %34, %3
  %40 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %41 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [1 x %struct.iic_msg], [1 x %struct.iic_msg]* %9, i64 0, i64 0
  %44 = call i32 @iicbus_transfer(i32 %42, %struct.iic_msg* %43, i32 1)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.tda19988_softc*, %struct.tda19988_softc** %4, align 8
  %49 = getelementptr inbounds %struct.tda19988_softc, %struct.tda19988_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %39
  %54 = load i32, i32* %8, align 4
  ret i32 %54
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
