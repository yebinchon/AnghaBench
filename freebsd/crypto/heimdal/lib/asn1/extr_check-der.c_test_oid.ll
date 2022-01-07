; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c")\01\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\FF\01\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\FF\00", align 1
@__const.test_oid.tests = private unnamed_addr constant [4 x %struct.test_case] [%struct.test_case { i32 0, i8* inttoptr (i64 2 to i8*), i32* bitcast ([3 x i8]* @.str to i32*), %struct.TYPE_2__* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 1 to i8*), i32* bitcast ([2 x i8]* @.str.1 to i32*), %struct.TYPE_2__* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 2 to i8*), i32* bitcast ([3 x i8]* @.str.2 to i32*), %struct.TYPE_2__* null, i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 1 to i8*), i32* bitcast ([2 x i8]* @.str.3 to i32*), %struct.TYPE_2__* null, i32* null }], align 16
@oid_comp1 = common dso_local global i32 0, align 4
@oid_comp2 = common dso_local global i32 0, align 4
@oid_comp3 = common dso_local global i32 0, align 4
@oid_comp4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"oid %d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@der_put_oid = common dso_local global i64 0, align 8
@der_length_oid = common dso_local global i64 0, align 8
@der_get_oid = common dso_local global i64 0, align 8
@der_free_oid = common dso_local global i64 0, align 8
@test_cmp_oid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_oid() #0 {
  %1 = alloca [4 x %struct.test_case], align 16
  %2 = alloca [4 x %struct.TYPE_2__], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [4 x %struct.test_case]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([4 x %struct.test_case]* @__const.test_oid.tests to i8*), i64 160, i1 false)
  %7 = getelementptr inbounds [4 x %struct.TYPE_2__], [4 x %struct.TYPE_2__]* %2, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 3, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %10 = load i32, i32* @oid_comp1, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 2, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %14 = load i32, i32* @oid_comp2, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 3, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %18 = load i32, i32* @oid_comp3, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %22 = load i32, i32* @oid_comp4, align 4
  store i32 %22, i32* %21, align 4
  store i32 4, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %54, %0
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x %struct.TYPE_2__], [4 x %struct.TYPE_2__]* %2, i64 0, i64 %29
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.test_case, %struct.test_case* %33, i32 0, i32 3
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.test_case, %struct.test_case* %37, i32 0, i32 2
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @asprintf(i32** %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.test_case, %struct.test_case* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %23

57:                                               ; preds = %23
  %58 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 0
  %59 = load i32, i32* %5, align 4
  %60 = load i64, i64* @der_put_oid, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* @der_length_oid, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* @der_get_oid, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* @der_free_oid, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @test_cmp_oid, align 4
  %69 = call i32 @generic_test(%struct.test_case* %58, i32 %59, i32 8, i32 %61, i32 %63, i32 %65, i32 %67, i32 %68, i32* null)
  store i32 %69, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %81, %57
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.test_case, %struct.test_case* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @free(i32* %79)
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %70

84:                                               ; preds = %70
  %85 = load i32, i32* %4, align 4
  ret i32 %85
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
