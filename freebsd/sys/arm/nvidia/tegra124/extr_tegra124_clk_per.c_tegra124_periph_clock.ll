; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_per.c_tegra124_periph_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_per.c_tegra124_periph_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_car_softc = type { i32 }

@periph_def = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"tegra124_periph_register failed\00", align 1
@pgate_def = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"tegra124_pgate_register failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra124_periph_clock(%struct.tegra124_car_softc* %0) #0 {
  %2 = alloca %struct.tegra124_car_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tegra124_car_softc* %0, %struct.tegra124_car_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32*, i32** @periph_def, align 8
  %8 = call i32 @nitems(i32* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %2, align 8
  %12 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @periph_def, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @periph_register(i32 %13, i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %5

27:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %3, align 4
  %30 = load i32*, i32** @pgate_def, align 8
  %31 = call i32 @nitems(i32* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.tegra124_car_softc*, %struct.tegra124_car_softc** %2, align 8
  %35 = getelementptr inbounds %struct.tegra124_car_softc, %struct.tegra124_car_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @pgate_def, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @pgate_register(i32 %36, i32* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %28

50:                                               ; preds = %28
  ret void
}

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @periph_register(i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pgate_register(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
