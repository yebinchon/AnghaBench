; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_test-normalize.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_test-normalize.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LENGTH_CANON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"wind_stringprep_normalize %s failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%u: wrong out len (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Expected\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Received\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%u: wrong out data (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* @MAX_LENGTH_CANON, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @MAX_LENGTH_CANON, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @strtok_r(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %110

29:                                               ; preds = %2
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @parse_vector(i8* %30, i32* %20)
  store i64 %31, i64* %10, align 8
  %32 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6)
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %110

35:                                               ; preds = %29
  %36 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6)
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %110

39:                                               ; preds = %35
  %40 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %110

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @parse_vector(i8* %45, i32* %23)
  store i64 %46, i64* %12, align 8
  %47 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6)
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %110

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %7, align 8
  %52 = load i32, i32* @MAX_LENGTH_CANON, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = mul i64 %54, 4
  %56 = call i32* @malloc(i64 %55)
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i64, i64* %14, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59, %50
  %65 = load i64, i64* %10, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @_wind_stringprep_normalize(i32* %20, i64 %65, i32* %66, i64* %14)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @free(i32* %73)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %110

75:                                               ; preds = %64
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %14, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %80, i8* %81)
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @dump_vector(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %23, i64 %83)
  %85 = load i32*, i32** %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @dump_vector(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %85, i64 %86)
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @free(i32* %88)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %110

90:                                               ; preds = %75
  %91 = load i32*, i32** %13, align 8
  %92 = load i64, i64* %12, align 8
  %93 = mul i64 %92, 4
  %94 = call i64 @memcmp(i32* %23, i32* %91, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load i32, i32* %5, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %97, i8* %98)
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @dump_vector(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %23, i64 %100)
  %102 = load i32*, i32** %13, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @dump_vector(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %102, i64 %103)
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @free(i32* %105)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %110

107:                                              ; preds = %90
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @free(i32* %108)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %110

110:                                              ; preds = %107, %96, %79, %70, %49, %43, %38, %34, %28
  %111 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #2

declare dso_local i64 @parse_vector(i8*, i32*) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @_wind_stringprep_normalize(i32*, i64, i32*, i64*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @dump_vector(i8*, i32*, i64) #2

declare dso_local i64 @memcmp(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
