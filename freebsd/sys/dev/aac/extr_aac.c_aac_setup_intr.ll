; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32 }

@AAC_FLAGS_NEW_COMM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@aac_new_intr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"can't set up interrupt\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@aac_filter = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"can't set up interrupt filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*)* @aac_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_setup_intr(%struct.aac_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  %4 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %5 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AAC_FLAGS_NEW_COMM, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %12 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %15 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @INTR_MPSAFE, align 4
  %18 = load i32, i32* @INTR_TYPE_BIO, align 4
  %19 = or i32 %17, %18
  %20 = load i32*, i32** @aac_new_intr, align 8
  %21 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %22 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %23 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %22, i32 0, i32 2
  %24 = call i64 @bus_setup_intr(i32 %13, i32 %16, i32 %19, i32* null, i32* %20, %struct.aac_softc* %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %10
  %27 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %28 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %2, align 4
  br label %55

32:                                               ; preds = %10
  br label %54

33:                                               ; preds = %1
  %34 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %35 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %38 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @INTR_TYPE_BIO, align 4
  %41 = load i32*, i32** @aac_filter, align 8
  %42 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %43 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %44 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %43, i32 0, i32 2
  %45 = call i64 @bus_setup_intr(i32 %36, i32 %39, i32 %40, i32* %41, i32* null, %struct.aac_softc* %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %49 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %32
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %47, %26
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32*, %struct.aac_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
