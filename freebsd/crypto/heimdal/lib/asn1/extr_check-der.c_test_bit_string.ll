; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_bit_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_bit_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"bit_string %d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@der_put_bit_string = common dso_local global i64 0, align 8
@der_length_bit_string = common dso_local global i64 0, align 8
@der_get_bit_string = common dso_local global i64 0, align 8
@der_free_bit_string = common dso_local global i64 0, align 8
@test_cmp_bit_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bit_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bit_string() #0 {
  %1 = alloca [1 x %struct.test_case], align 16
  %2 = alloca [1 x %struct.TYPE_2__], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [1 x %struct.test_case]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false)
  %7 = bitcast i8* %6 to [1 x %struct.test_case]*
  %8 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.test_case, %struct.test_case* %8, i32 0, i32 1
  store i8* inttoptr (i64 1 to i8*), i8** %9, align 8
  %10 = getelementptr inbounds %struct.test_case, %struct.test_case* %8, i32 0, i32 2
  store i32* bitcast ([2 x i8]* @.str to i32*), i32** %10, align 16
  %11 = getelementptr inbounds [1 x %struct.TYPE_2__], [1 x %struct.TYPE_2__]* %2, i64 0, i64 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i8* null, i8** %12, align 16
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 ptrtoint ([1 x i8]* @.str.1 to i32), i32* %13, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %45, %0
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1 x %struct.TYPE_2__], [1 x %struct.TYPE_2__]* %2, i64 0, i64 %20
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %1, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.test_case, %struct.test_case* %24, i32 0, i32 3
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %1, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.test_case, %struct.test_case* %28, i32 0, i32 2
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @asprintf(i32** %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %18
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %1, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.test_case, %struct.test_case* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %14

48:                                               ; preds = %14
  %49 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %1, i64 0, i64 0
  %50 = load i32, i32* %5, align 4
  %51 = load i64, i64* @der_put_bit_string, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* @der_length_bit_string, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* @der_get_bit_string, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i64, i64* @der_free_bit_string, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @test_cmp_bit_string, align 4
  %60 = call i32 @generic_test(%struct.test_case* %49, i32 %50, i32 16, i32 %52, i32 %54, i32 %56, i32 %58, i32 %59, i32* null)
  store i32 %60, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %72, %48
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %1, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.test_case, %struct.test_case* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @free(i32* %70)
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %61

75:                                               ; preds = %61
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

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
