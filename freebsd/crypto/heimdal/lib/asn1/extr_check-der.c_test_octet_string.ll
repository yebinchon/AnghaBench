; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_octet_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_test_octet_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }
%struct.test_case = type { i32, i8*, i32*, %struct.TYPE_2__*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"\01#Eg\89\AB\CD\EF\00", align 1
@__const.test_octet_string.s1 = private unnamed_addr constant %struct.TYPE_2__ { i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"a octet string\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@der_put_octet_string = common dso_local global i64 0, align 8
@der_length_octet_string = common dso_local global i64 0, align 8
@der_get_octet_string = common dso_local global i64 0, align 8
@der_free_octet_string = common dso_local global i64 0, align 8
@cmp_octet_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_octet_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_octet_string() #0 {
  %1 = alloca %struct.TYPE_2__, align 8
  %2 = alloca [1 x %struct.test_case], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast %struct.TYPE_2__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_2__* @__const.test_octet_string.s1 to i8*), i64 16, i1 false)
  %6 = bitcast [1 x %struct.test_case]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false)
  %7 = bitcast i8* %6 to [1 x %struct.test_case]*
  %8 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.test_case, %struct.test_case* %8, i32 0, i32 1
  store i8* inttoptr (i64 8 to i8*), i8** %9, align 8
  %10 = getelementptr inbounds %struct.test_case, %struct.test_case* %8, i32 0, i32 2
  store i32* bitcast ([9 x i8]* @.str to i32*), i32** %10, align 16
  store i32 1, i32* %3, align 4
  %11 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %2, i64 0, i64 0
  %12 = getelementptr inbounds %struct.test_case, %struct.test_case* %11, i32 0, i32 3
  store %struct.TYPE_2__* %1, %struct.TYPE_2__** %12, align 8
  %13 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %2, i64 0, i64 0
  %14 = getelementptr inbounds %struct.test_case, %struct.test_case* %13, i32 0, i32 2
  %15 = call i64 @asprintf(i32** %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %0
  %20 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %2, i64 0, i64 0
  %21 = getelementptr inbounds %struct.test_case, %struct.test_case* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 16
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %2, i64 0, i64 0
  %28 = load i32, i32* %3, align 4
  %29 = load i64, i64* @der_put_octet_string, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* @der_length_octet_string, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* @der_get_octet_string, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @der_free_octet_string, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @cmp_octet_string, align 4
  %38 = call i32 @generic_test(%struct.test_case* %27, i32 %28, i32 16, i32 %30, i32 %32, i32 %34, i32 %36, i32 %37, i32* null)
  store i32 %38, i32* %4, align 4
  %39 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %2, i64 0, i64 0
  %40 = getelementptr inbounds %struct.test_case, %struct.test_case* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 16
  %42 = call i32 @free(i32* %41)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
