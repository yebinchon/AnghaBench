; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_hex-test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_hex-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i8*, i64, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"61\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"6162\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"616263\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"61626364\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"6162636465\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"616263646566\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"abcdefg\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"61626364656667\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"3D\00", align 1
@__const.main.tests = private unnamed_addr constant [10 x %struct.test] [%struct.test { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i64 6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i64 7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0) }, %struct.test { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0) }, %struct.test zeroinitializer], align 16
@stderr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"failed test %d: %s != %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"failed test %d: len %lu != %lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"failed test %d: data\0A\00", align 1
@__const.main.buf = private unnamed_addr constant [2 x i8] c"\00\FF", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"len != 1\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"buf != 10\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"buf != 0xff\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.test*, align 8
  %9 = alloca [10 x %struct.test], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8], align 1
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %14 = bitcast [10 x %struct.test]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([10 x %struct.test]* @__const.main.tests to i8*), i64 240, i1 false)
  %15 = getelementptr inbounds [10 x %struct.test], [10 x %struct.test]* %9, i64 0, i64 0
  store %struct.test* %15, %struct.test** %8, align 8
  br label %16

16:                                               ; preds = %100, %2
  %17 = load %struct.test*, %struct.test** %8, align 8
  %18 = getelementptr inbounds %struct.test, %struct.test* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %103

21:                                               ; preds = %16
  %22 = load %struct.test*, %struct.test** %8, align 8
  %23 = getelementptr inbounds %struct.test, %struct.test* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.test*, %struct.test** %8, align 8
  %26 = getelementptr inbounds %struct.test, %struct.test* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @hex_encode(i8* %24, i64 %27, i8** %10)
  store i32 %28, i32* %11, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.test*, %struct.test** %8, align 8
  %31 = getelementptr inbounds %struct.test, %struct.test* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %29, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %21
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.test*, %struct.test** %8, align 8
  %40 = getelementptr inbounds %struct.test, %struct.test* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %37, i8* %38, i8* %41)
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %35, %21
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load %struct.test*, %struct.test** %8, align 8
  %49 = getelementptr inbounds %struct.test, %struct.test* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @strdup(i8* %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @strlen(i8* %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.test*, %struct.test** %8, align 8
  %55 = getelementptr inbounds %struct.test, %struct.test* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (i8*, ...) @hex_decode(i8* %56, i8* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.test*, %struct.test** %8, align 8
  %63 = getelementptr inbounds %struct.test, %struct.test* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %45
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.test*, %struct.test** %8, align 8
  %72 = getelementptr inbounds %struct.test, %struct.test* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 %68, i64 %70, i64 %73)
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %95

77:                                               ; preds = %45
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.test*, %struct.test** %8, align 8
  %80 = getelementptr inbounds %struct.test, %struct.test* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.test*, %struct.test** %8, align 8
  %83 = getelementptr inbounds %struct.test, %struct.test* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i64 @memcmp(i8* %78, i8* %81, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %77
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %88, %77
  br label %95

95:                                               ; preds = %94, %66
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %95
  %101 = load %struct.test*, %struct.test** %8, align 8
  %102 = getelementptr inbounds %struct.test, %struct.test* %101, i32 1
  store %struct.test* %102, %struct.test** %8, align 8
  br label %16

103:                                              ; preds = %16
  %104 = bitcast [2 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %104, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.main.buf, i32 0, i32 0), i64 2, i1 false)
  %105 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %106 = call i32 (i8*, ...) @hex_decode(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8* %105, i32 1)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %109, %103
  %115 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp ne i32 %117, 10
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* @stderr, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %119, %114
  %125 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp ne i32 %127, 255
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32, i32* @stderr, align 4
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hex_encode(i8*, i64, i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @hex_decode(i8*, ...) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
