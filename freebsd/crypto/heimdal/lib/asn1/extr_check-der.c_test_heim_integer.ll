; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_heim_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_heim_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i32*, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i8*, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"\FE\01\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\EF\01\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\FF\00\FF\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\FF\01\00\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\00\80\00", align 1
@__const.test_heim_integer.tests = private unnamed_addr constant [7 x %struct.test_case] [%struct.test_case { i32 0, i8* inttoptr (i64 2 to i8*), i32* bitcast ([3 x i8]* @.str to i32*), %struct.TYPE_4__* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 2 to i8*), i32* bitcast ([3 x i8]* @.str.1 to i32*), %struct.TYPE_4__* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 3 to i8*), i32* bitcast ([4 x i8]* @.str.2 to i32*), %struct.TYPE_4__* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 3 to i8*), i32* bitcast ([4 x i8]* @.str.3 to i32*), %struct.TYPE_4__* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 1 to i8*), i32* bitcast ([2 x i8]* @.str.4 to i32*), %struct.TYPE_4__* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 1 to i8*), i32* bitcast ([2 x i8]* @.str.5 to i32*), %struct.TYPE_4__* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 2 to i8*), i32* bitcast ([3 x i8]* @.str.6 to i32*), %struct.TYPE_4__* null, i32* null }], align 16
@.str.7 = private unnamed_addr constant [3 x i8] c"\01\FF\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\10\FF\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\FF\01\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\FF\00\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@__const.test_heim_integer.values = private unnamed_addr constant [7 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 1, i64 0 }, %struct.TYPE_4__ { i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 1, i64 0 }, %struct.TYPE_4__ { i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 1, i64 0 }, %struct.TYPE_4__ { i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 1, i64 0 }, %struct.TYPE_4__ { i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i32 0, i64 0 }, %struct.TYPE_4__ { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 0, i64 0 }, %struct.TYPE_4__ { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i32 0, i64 0 }], align 16
@.str.13 = private unnamed_addr constant [16 x i8] c"heim_integer %d\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@der_put_heim_integer = common dso_local global i64 0, align 8
@der_length_heim_integer = common dso_local global i64 0, align 8
@test_cmp_heim_integer = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"der_get_heim_integer\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"der_get_heim_integer wrong length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_heim_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_heim_integer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x %struct.test_case], align 16
  %3 = alloca [7 x %struct.TYPE_4__], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = bitcast [7 x %struct.test_case]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([7 x %struct.test_case]* @__const.test_heim_integer.tests to i8*), i64 280, i1 false)
  %10 = bitcast [7 x %struct.TYPE_4__]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([7 x %struct.TYPE_4__]* @__const.test_heim_integer.values to i8*), i64 224, i1 false)
  store i32 7, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %42, %0
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [7 x %struct.TYPE_4__], [7 x %struct.TYPE_4__]* %3, i64 0, i64 %17
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [7 x %struct.test_case], [7 x %struct.test_case]* %2, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.test_case, %struct.test_case* %21, i32 0, i32 3
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [7 x %struct.test_case], [7 x %struct.test_case]* %2, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.test_case, %struct.test_case* %25, i32 0, i32 2
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @asprintf(i32** %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %15
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [7 x %struct.test_case], [7 x %struct.test_case]* %2, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.test_case, %struct.test_case* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %11

45:                                               ; preds = %11
  %46 = getelementptr inbounds [7 x %struct.test_case], [7 x %struct.test_case]* %2, i64 0, i64 0
  %47 = load i32, i32* %6, align 4
  %48 = load i64, i64* @der_put_heim_integer, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* @der_length_heim_integer, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @test_cmp_heim_integer, align 4
  %53 = call i32 @generic_test(%struct.test_case* %46, i32 %47, i32 32, i32 %49, i32 %51, i32 ptrtoint (i32 (i32*, i32, %struct.TYPE_4__*, i64*)* @der_get_heim_integer to i32), i32 ptrtoint (i32 (%struct.TYPE_4__*)* @der_free_heim_integer to i32), i32 %52, i32* null)
  store i32 %53, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %65, %45
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [7 x %struct.test_case], [7 x %struct.test_case]* %2, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.test_case, %struct.test_case* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @free(i32* %63)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %1, align 4
  br label %87

73:                                               ; preds = %68
  %74 = call i32 @der_get_heim_integer(i32* null, i32 0, %struct.TYPE_4__* %8, i64* %7)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  %86 = call i32 @der_free_heim_integer(%struct.TYPE_4__* %8)
  store i32 0, i32* %1, align 4
  br label %87

87:                                               ; preds = %85, %71
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @asprintf(i32**, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @der_get_heim_integer(i32*, i32, %struct.TYPE_4__*, i64*) #2

declare dso_local i32 @der_free_heim_integer(%struct.TYPE_4__*) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
