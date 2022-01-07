; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_unsigned.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\7F\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\00\80\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\01\00\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\02\00\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\00\80\00\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\00\80\00\00\00\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\7F\FF\FF\FF\00", align 1
@__const.test_unsigned.tests = private unnamed_addr constant [8 x %struct.test_case] [%struct.test_case { i32 0, i8* inttoptr (i64 1 to i8*), i32* bitcast ([2 x i8]* @.str to i32*), i32* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 1 to i8*), i32* bitcast ([2 x i8]* @.str.1 to i32*), i32* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 2 to i8*), i32* bitcast ([3 x i8]* @.str.2 to i32*), i32* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 2 to i8*), i32* bitcast ([3 x i8]* @.str.3 to i32*), i32* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 2 to i8*), i32* bitcast ([3 x i8]* @.str.4 to i32*), i32* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 3 to i8*), i32* bitcast ([4 x i8]* @.str.5 to i32*), i32* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 5 to i8*), i32* bitcast ([6 x i8]* @.str.6 to i32*), i32* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 4 to i8*), i32* bitcast ([5 x i8]* @.str.7 to i32*), i32* null, i32* null }], align 16
@__const.test_unsigned.values = private unnamed_addr constant [8 x i32] [i32 0, i32 127, i32 128, i32 256, i32 512, i32 32768, i32 -2147483648, i32 2147483647], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"unsigned %u\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@der_put_unsigned = common dso_local global i64 0, align 8
@der_length_unsigned = common dso_local global i64 0, align 8
@der_get_unsigned = common dso_local global i64 0, align 8
@cmp_unsigned = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_unsigned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_unsigned() #0 {
  %1 = alloca [8 x %struct.test_case], align 16
  %2 = alloca [8 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [8 x %struct.test_case]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([8 x %struct.test_case]* @__const.test_unsigned.tests to i8*), i64 320, i1 false)
  %7 = bitcast [8 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([8 x i32]* @__const.test_unsigned.values to i8*), i64 32, i1 false)
  store i32 8, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %42, %0
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %14
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x %struct.test_case], [8 x %struct.test_case]* %1, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.test_case, %struct.test_case* %18, i32 0, i32 2
  store i32* %15, i32** %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x %struct.test_case], [8 x %struct.test_case]* %1, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.test_case, %struct.test_case* %22, i32 0, i32 3
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @asprintf(i32** %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %12
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %12
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x %struct.test_case], [8 x %struct.test_case]* %1, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.test_case, %struct.test_case* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %8

45:                                               ; preds = %8
  %46 = getelementptr inbounds [8 x %struct.test_case], [8 x %struct.test_case]* %1, i64 0, i64 0
  %47 = load i32, i32* %5, align 4
  %48 = load i64, i64* @der_put_unsigned, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* @der_length_unsigned, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* @der_get_unsigned, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @cmp_unsigned, align 4
  %55 = call i32 @generic_test(%struct.test_case* %46, i32 %47, i32 4, i32 %49, i32 %51, i32 %53, i32 0, i32 %54, i32* null)
  store i32 %55, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %67, %45
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x %struct.test_case], [8 x %struct.test_case]* %1, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.test_case, %struct.test_case* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @free(i32* %65)
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %56

70:                                               ; preds = %56
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @asprintf(i32**, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
