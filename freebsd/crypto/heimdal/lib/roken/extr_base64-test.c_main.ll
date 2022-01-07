; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_base64-test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_base64-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i8*, i64, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"MQ==\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"MjI=\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"333\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"MzMz\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"4444\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"NDQ0NA==\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"55555\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"NTU1NTU=\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"abc:def\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"YWJjOmRlZg==\00", align 1
@__const.main.tests = private unnamed_addr constant [8 x %struct.test] [%struct.test { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i64 7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0) }, %struct.test zeroinitializer], align 16
@stderr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"failed test %d: %s != %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"failed test %d: len %lu != %lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"failed test %d: data\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"M=M=\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"failed test %d: successful decode of `M=M='\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"MQ===\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"failed test %d: successful decode of `MQ==='\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.test*, align 8
  %9 = alloca [8 x %struct.test], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %13 = bitcast [8 x %struct.test]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([8 x %struct.test]* @__const.main.tests to i8*), i64 192, i1 false)
  %14 = getelementptr inbounds [8 x %struct.test], [8 x %struct.test]* %9, i64 0, i64 0
  store %struct.test* %14, %struct.test** %8, align 8
  br label %15

15:                                               ; preds = %96, %2
  %16 = load %struct.test*, %struct.test** %8, align 8
  %17 = getelementptr inbounds %struct.test, %struct.test* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %99

20:                                               ; preds = %15
  %21 = load %struct.test*, %struct.test** %8, align 8
  %22 = getelementptr inbounds %struct.test, %struct.test* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.test*, %struct.test** %8, align 8
  %25 = getelementptr inbounds %struct.test, %struct.test* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @base64_encode(i8* %23, i64 %26, i8** %10)
  store i32 %27, i32* %11, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.test*, %struct.test** %8, align 8
  %30 = getelementptr inbounds %struct.test, %struct.test* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %28, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %20
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.test*, %struct.test** %8, align 8
  %39 = getelementptr inbounds %struct.test, %struct.test* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %36, i8* %37, i8* %40)
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %34, %20
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load %struct.test*, %struct.test** %8, align 8
  %48 = getelementptr inbounds %struct.test, %struct.test* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @strdup(i8* %49)
  store i8* %50, i8** %10, align 8
  %51 = load %struct.test*, %struct.test** %8, align 8
  %52 = getelementptr inbounds %struct.test, %struct.test* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @base64_decode(i8* %53, i8* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.test*, %struct.test** %8, align 8
  %59 = getelementptr inbounds %struct.test, %struct.test* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %44
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.test*, %struct.test** %8, align 8
  %68 = getelementptr inbounds %struct.test, %struct.test* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %64, i64 %66, i64 %69)
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %91

73:                                               ; preds = %44
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.test*, %struct.test** %8, align 8
  %76 = getelementptr inbounds %struct.test, %struct.test* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.test*, %struct.test** %8, align 8
  %79 = getelementptr inbounds %struct.test, %struct.test* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i64 @memcmp(i8* %74, i8* %77, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %84, %73
  br label %91

91:                                               ; preds = %90, %62
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %91
  %97 = load %struct.test*, %struct.test** %8, align 8
  %98 = getelementptr inbounds %struct.test, %struct.test* %97, i32 1
  store %struct.test* %98, %struct.test** %8, align 8
  br label %15

99:                                               ; preds = %15
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %101 = call i32 @base64_decode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %100)
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load i32, i32* @stderr, align 4
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  %107 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i32 %105)
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %103, %99
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %112 = call i32 @base64_decode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* %111)
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load i32, i32* @stderr, align 4
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  %118 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i32 %116)
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %114, %110
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @base64_encode(i8*, i64, i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @base64_decode(i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
