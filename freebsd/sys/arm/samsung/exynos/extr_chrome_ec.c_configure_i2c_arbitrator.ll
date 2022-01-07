; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_ec.c_configure_i2c_arbitrator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_ec.c_configure_i2c_arbitrator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"/i2c-arbitrator\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"freebsd,our-gpio\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"freebsd,ec-gpio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ec_softc*)* @configure_i2c_arbitrator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_i2c_arbitrator(%struct.ec_softc* %0) #0 {
  %2 = alloca %struct.ec_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ec_softc* %0, %struct.ec_softc** %2, align 8
  %4 = call i32 @OF_finddevice(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @OF_hasprop(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @OF_hasprop(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.ec_softc*, %struct.ec_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.ec_softc*, %struct.ec_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %19, i32 0, i32 2
  %21 = call i32 @OF_getencprop(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %20, i32 4)
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.ec_softc*, %struct.ec_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %23, i32 0, i32 1
  %25 = call i32 @OF_getencprop(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %24, i32 4)
  br label %33

26:                                               ; preds = %11, %7, %1
  %27 = load %struct.ec_softc*, %struct.ec_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.ec_softc*, %struct.ec_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %29, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = load %struct.ec_softc*, %struct.ec_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ec_softc, %struct.ec_softc* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %15
  ret void
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
