; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_bmp_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_bmp_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.test_case = type { i32, i8*, i32*, %struct.TYPE_2__*, i32* }

@bmp_d1 = common dso_local global i32 0, align 4
@bmp_d2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\00 \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\00 \00 \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"a bmp string\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"second bmp string\00", align 1
@der_put_bmp_string = common dso_local global i64 0, align 8
@der_length_bmp_string = common dso_local global i64 0, align 8
@der_get_bmp_string = common dso_local global i64 0, align 8
@der_free_bmp_string = common dso_local global i64 0, align 8
@cmp_bmp_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bmp_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bmp_string() #0 {
  %1 = alloca %struct.TYPE_2__, align 4
  %2 = alloca %struct.TYPE_2__, align 4
  %3 = alloca [2 x %struct.test_case], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %8 = load i32, i32* @bmp_d1, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 2, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %11 = load i32, i32* @bmp_d2, align 4
  store i32 %11, i32* %10, align 4
  %12 = bitcast [2 x %struct.test_case]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 80, i1 false)
  %13 = bitcast i8* %12 to [2 x %struct.test_case]*
  %14 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.test_case, %struct.test_case* %14, i32 0, i32 1
  store i8* inttoptr (i64 2 to i8*), i8** %15, align 8
  %16 = getelementptr inbounds %struct.test_case, %struct.test_case* %14, i32 0, i32 2
  store i32* bitcast ([3 x i8]* @.str to i32*), i32** %16, align 16
  %17 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %13, i32 0, i32 1
  %18 = getelementptr inbounds %struct.test_case, %struct.test_case* %17, i32 0, i32 1
  store i8* inttoptr (i64 4 to i8*), i8** %18, align 8
  %19 = getelementptr inbounds %struct.test_case, %struct.test_case* %17, i32 0, i32 2
  store i32* bitcast ([5 x i8]* @.str.1 to i32*), i32** %19, align 8
  store i32 2, i32* %4, align 4
  %20 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %3, i64 0, i64 0
  %21 = getelementptr inbounds %struct.test_case, %struct.test_case* %20, i32 0, i32 3
  store %struct.TYPE_2__* %1, %struct.TYPE_2__** %21, align 8
  %22 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %3, i64 0, i64 0
  %23 = getelementptr inbounds %struct.test_case, %struct.test_case* %22, i32 0, i32 2
  %24 = call i64 @asprintf(i32** %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %0
  %27 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %0
  %29 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %3, i64 0, i64 0
  %30 = getelementptr inbounds %struct.test_case, %struct.test_case* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 16
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %3, i64 0, i64 1
  %37 = getelementptr inbounds %struct.test_case, %struct.test_case* %36, i32 0, i32 3
  store %struct.TYPE_2__* %2, %struct.TYPE_2__** %37, align 8
  %38 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %3, i64 0, i64 1
  %39 = getelementptr inbounds %struct.test_case, %struct.test_case* %38, i32 0, i32 2
  %40 = call i64 @asprintf(i32** %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  %45 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %3, i64 0, i64 1
  %46 = getelementptr inbounds %struct.test_case, %struct.test_case* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %3, i64 0, i64 0
  %53 = load i32, i32* %4, align 4
  %54 = load i64, i64* @der_put_bmp_string, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* @der_length_bmp_string, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* @der_get_bmp_string, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* @der_free_bmp_string, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @cmp_bmp_string, align 4
  %63 = call i32 @generic_test(%struct.test_case* %52, i32 %53, i32 8, i32 %55, i32 %57, i32 %59, i32 %61, i32 %62, i32* null)
  store i32 %63, i32* %5, align 4
  %64 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %3, i64 0, i64 0
  %65 = getelementptr inbounds %struct.test_case, %struct.test_case* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 16
  %67 = call i32 @free(i32* %66)
  %68 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %3, i64 0, i64 1
  %69 = getelementptr inbounds %struct.test_case, %struct.test_case* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @free(i32* %70)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @asprintf(i32**, i8*) #2

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
