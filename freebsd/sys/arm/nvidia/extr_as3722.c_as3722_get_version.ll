; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_get_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i64, i32 }

@AS3722_ASIC_ID1 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AS3722_DEVICE_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid chip ID is 0x%x\0A\00", align 1
@AS3722_ASIC_ID2 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"AS3722 rev: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3722_softc*)* @as3722_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_get_version(%struct.as3722_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.as3722_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.as3722_softc* %0, %struct.as3722_softc** %3, align 8
  %6 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %7 = load i32, i32* @AS3722_ASIC_ID1, align 4
  %8 = call i32 @RD1(%struct.as3722_softc* %6, i32 %7, i64* %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @AS3722_DEVICE_ID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %19 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %13
  %25 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %26 = load i32, i32* @AS3722_ASIC_ID2, align 4
  %27 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %28 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %27, i32 0, i32 0
  %29 = call i32 @RD1(%struct.as3722_softc* %25, i32 %26, i64* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %24
  %35 = load i64, i64* @bootverbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %39 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %42 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %37, %34
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %32, %17, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @RD1(%struct.as3722_softc*, i32, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
