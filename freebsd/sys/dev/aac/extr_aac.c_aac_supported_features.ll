; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_supported_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_supported_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%struct.aac_features = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_FLAGS_LBA_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i32)* @aac_supported_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_supported_features(%struct.aac_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aac_features, align 8
  %7 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %9 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %10 = call i32 @fwprintf(%struct.aac_softc* %8, i8* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @copyin(i32 %11, %struct.aac_features* %6, i32 16)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.aac_features, %struct.aac_features* %6, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %23 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AAC_FLAGS_LBA_64BIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = getelementptr inbounds %struct.aac_features, %struct.aac_features* %6, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  br label %52

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.aac_features, %struct.aac_features* %6, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %41 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AAC_FLAGS_LBA_64BIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = getelementptr inbounds %struct.aac_features, %struct.aac_features* %6, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  br label %51

51:                                               ; preds = %39, %33
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @copyout(%struct.aac_features* %6, i32 %53, i32 16)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @copyin(i32, %struct.aac_features*, i32) #1

declare dso_local i32 @copyout(%struct.aac_features*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
