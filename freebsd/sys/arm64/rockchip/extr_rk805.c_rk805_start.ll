; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk805.c_rk805_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk805.c_rk805_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk805_softc = type { i64, i32, i8* }

@bootverbose = common dso_local global i64 0, align 8
@RK805 = common dso_local global i64 0, align 8
@RK805_CHIP_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot read chip name reg\0A\00", align 1
@RK805_CHIP_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot read chip version reg\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Chip Name: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Chip Version: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rk805_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk805_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rk805_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.rk805_softc* @device_get_softc(i8* %8)
  store %struct.rk805_softc* %9, %struct.rk805_softc** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.rk805_softc*, %struct.rk805_softc** %3, align 8
  %12 = getelementptr inbounds %struct.rk805_softc, %struct.rk805_softc* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load i64, i64* @bootverbose, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %1
  %16 = load %struct.rk805_softc*, %struct.rk805_softc** %3, align 8
  %17 = getelementptr inbounds %struct.rk805_softc, %struct.rk805_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RK805, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @RK805_CHIP_NAME, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %25 = call i32 @rk805_read(i8* %22, i32 %23, i32* %24, i32 1)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i8*, i8*, ...) @device_printf(i8* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %62

31:                                               ; preds = %21
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @RK805_CHIP_VER, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = call i32 @rk805_read(i8* %32, i32 %33, i32* %35, i32 1)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i8*, i8*, ...) @device_printf(i8* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %62

42:                                               ; preds = %31
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 4
  %50 = and i32 %49, 15
  %51 = or i32 %46, %50
  %52 = call i32 (i8*, i8*, ...) @device_printf(i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 15
  %57 = call i32 (i8*, i8*, ...) @device_printf(i8* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %42, %15, %1
  %59 = load %struct.rk805_softc*, %struct.rk805_softc** %3, align 8
  %60 = getelementptr inbounds %struct.rk805_softc, %struct.rk805_softc* %59, i32 0, i32 1
  %61 = call i32 @config_intrhook_disestablish(i32* %60)
  br label %62

62:                                               ; preds = %58, %39, %28
  ret void
}

declare dso_local %struct.rk805_softc* @device_get_softc(i8*) #1

declare dso_local i32 @rk805_read(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
