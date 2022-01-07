; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_test-map.c_try.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_test-map.c_try.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.example = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@WIND_PROFILE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"wind_stringprep_map failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wrong out len\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"wrong out data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.example*)* @try to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try(%struct.example* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.example*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.example* %0, %struct.example** %3, align 8
  %7 = load %struct.example*, %struct.example** %3, align 8
  %8 = getelementptr inbounds %struct.example, %struct.example* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = mul i64 %10, 4
  %12 = call i32* @malloc(i64 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15, %1
  %21 = load %struct.example*, %struct.example** %3, align 8
  %22 = getelementptr inbounds %struct.example, %struct.example* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.example*, %struct.example** %3, align 8
  %25 = getelementptr inbounds %struct.example, %struct.example* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @WIND_PROFILE_NAME, align 4
  %29 = call i32 @_wind_stringprep_map(i32 %23, i32 %26, i32* %27, i64* %5, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %60

34:                                               ; preds = %20
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.example*, %struct.example** %3, align 8
  %37 = getelementptr inbounds %struct.example, %struct.example* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @free(i32* %42)
  store i32 1, i32* %2, align 4
  br label %60

44:                                               ; preds = %34
  %45 = load %struct.example*, %struct.example** %3, align 8
  %46 = getelementptr inbounds %struct.example, %struct.example* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = mul i64 %49, 4
  %51 = call i64 @memcmp(i32 %47, i32* %48, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @free(i32* %55)
  store i32 1, i32* %2, align 4
  br label %60

57:                                               ; preds = %44
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @free(i32* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %53, %40, %32
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @_wind_stringprep_map(i32, i32, i32*, i64*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @memcmp(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
