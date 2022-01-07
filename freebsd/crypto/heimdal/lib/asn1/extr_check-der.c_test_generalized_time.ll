; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_generalized_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_generalized_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [16 x i8] c"19700101000000Z\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"19851106210627Z\00", align 1
@__const.test_generalized_time.values = private unnamed_addr constant [2 x i32] [i32 0, i32 500159187], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"time %d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@der_put_generalized_time = common dso_local global i64 0, align 8
@der_length_generalized_time = common dso_local global i64 0, align 8
@der_get_generalized_time = common dso_local global i64 0, align 8
@cmp_generalized_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_generalized_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_generalized_time() #0 {
  %1 = alloca [2 x %struct.test_case], align 16
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [2 x %struct.test_case]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 80, i1 false)
  %7 = bitcast i8* %6 to [2 x %struct.test_case]*
  %8 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.test_case, %struct.test_case* %8, i32 0, i32 1
  store i8* inttoptr (i64 15 to i8*), i8** %9, align 8
  %10 = getelementptr inbounds %struct.test_case, %struct.test_case* %8, i32 0, i32 2
  store i32* bitcast ([16 x i8]* @.str to i32*), i32** %10, align 16
  %11 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.test_case, %struct.test_case* %11, i32 0, i32 1
  store i8* inttoptr (i64 15 to i8*), i8** %12, align 8
  %13 = getelementptr inbounds %struct.test_case, %struct.test_case* %11, i32 0, i32 2
  store i32* bitcast ([16 x i8]* @.str.1 to i32*), i32** %13, align 8
  %14 = bitcast [2 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([2 x i32]* @__const.test_generalized_time.values to i8*), i64 8, i1 false)
  store i32 2, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %49, %0
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %21
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.test_case, %struct.test_case* %25, i32 0, i32 2
  store i32* %22, i32** %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.test_case, %struct.test_case* %29, i32 0, i32 3
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @asprintf(i32** %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %19
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.test_case, %struct.test_case* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %15

52:                                               ; preds = %15
  %53 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 0
  %54 = load i32, i32* %5, align 4
  %55 = load i64, i64* @der_put_generalized_time, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i64, i64* @der_length_generalized_time, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i64, i64* @der_get_generalized_time, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @cmp_generalized_time, align 4
  %62 = call i32 @generic_test(%struct.test_case* %53, i32 %54, i32 4, i32 %56, i32 %58, i32 %60, i32 0, i32 %61, i32* null)
  store i32 %62, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %74, %52
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.test_case, %struct.test_case* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @free(i32* %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %63

77:                                               ; preds = %63
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

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
