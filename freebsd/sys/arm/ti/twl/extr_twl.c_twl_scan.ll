; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl.c_twl_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl.c_twl_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_softc = type { i32, i32, i32 }

@TWL_MAX_SUBADDRS = common dso_local global i32 0, align 4
@TWL_CHIP_ID0 = common dso_local global i64 0, align 8
@TWL_INVALID_CHIP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Found (sub)device at 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @twl_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl_scan(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.twl_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @TWL_MAX_SUBADDRS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i64, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i64, i64* @TWL_CHIP_ID0, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = call %struct.twl_softc* @device_get_softc(i32 %14)
  store %struct.twl_softc* %15, %struct.twl_softc** %3, align 8
  %16 = load i32, i32* @TWL_INVALID_CHIP_ID, align 4
  %17 = load i32, i32* @TWL_MAX_SUBADDRS, align 4
  %18 = call i32 @memset(i64* %11, i32 %16, i32 %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %48, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @TWL_MAX_SUBADDRS, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.twl_softc*, %struct.twl_softc** %3, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i64 @twl_test_present(%struct.twl_softc* %24, i64 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %23
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %11, i64 %37
  store i64 %35, i64* %38, align 8
  %39 = load %struct.twl_softc*, %struct.twl_softc** %3, align 8
  %40 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %31, %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %19

51:                                               ; preds = %19
  %52 = load %struct.twl_softc*, %struct.twl_softc** %3, align 8
  %53 = call i32 @TWL_LOCK(%struct.twl_softc* %52)
  %54 = load %struct.twl_softc*, %struct.twl_softc** %3, align 8
  %55 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @TWL_MAX_SUBADDRS, align 4
  %58 = call i32 @memcpy(i32 %56, i64* %11, i32 %57)
  %59 = load %struct.twl_softc*, %struct.twl_softc** %3, align 8
  %60 = call i32 @TWL_UNLOCK(%struct.twl_softc* %59)
  %61 = load %struct.twl_softc*, %struct.twl_softc** %3, align 8
  %62 = getelementptr inbounds %struct.twl_softc, %struct.twl_softc* %61, i32 0, i32 0
  %63 = call i32 @config_intrhook_disestablish(i32* %62)
  %64 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.twl_softc* @device_get_softc(i32) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i64 @twl_test_present(%struct.twl_softc*, i64) #2

declare dso_local i32 @device_printf(i32, i8*, i64) #2

declare dso_local i32 @TWL_LOCK(%struct.twl_softc*) #2

declare dso_local i32 @memcpy(i32, i64*, i32) #2

declare dso_local i32 @TWL_UNLOCK(%struct.twl_softc*) #2

declare dso_local i32 @config_intrhook_disestablish(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
