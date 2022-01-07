; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_optional.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_optional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"0\00\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"optional 0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0\05\A0\03\02\01\00\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"optional 1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"0\05\A1\03\02\01\01\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"optional 2\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"0\0A\A0\03\02\01\00\A1\03\02\01\01\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"optional 3\00", align 1
@__const.test_optional.tests = private unnamed_addr constant [4 x %struct.test_case] [%struct.test_case { i32 0, i8* inttoptr (i64 2 to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct.TYPE_2__* bitcast ([11 x i8]* @.str.1 to %struct.TYPE_2__*), i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.TYPE_2__* bitcast ([11 x i8]* @.str.3 to %struct.TYPE_2__*), i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct.TYPE_2__* bitcast ([11 x i8]* @.str.5 to %struct.TYPE_2__*), i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 12 to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), %struct.TYPE_2__* bitcast ([11 x i8]* @.str.7 to %struct.TYPE_2__*), i32* null }], align 16
@encode_TESTOptional = common dso_local global i64 0, align 8
@length_TESTOptional = common dso_local global i64 0, align 8
@decode_TESTOptional = common dso_local global i64 0, align 8
@free_TESTOptional = common dso_local global i64 0, align 8
@cmp_TESTOptional = common dso_local global i32 0, align 4
@copy_TESTOptional = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_optional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_optional() #0 {
  %1 = alloca [4 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  %7 = alloca %struct.TYPE_2__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast [4 x %struct.test_case]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x %struct.test_case]* @__const.test_optional.tests to i8*), i64 160, i1 false)
  store i32 0, i32* %2, align 4
  store i32 4, i32* %3, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 0
  %14 = getelementptr inbounds %struct.test_case, %struct.test_case* %13, i32 0, i32 3
  store %struct.TYPE_2__* %4, %struct.TYPE_2__** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32* %8, i32** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 1
  %18 = getelementptr inbounds %struct.test_case, %struct.test_case* %17, i32 0, i32 3
  store %struct.TYPE_2__* %5, %struct.TYPE_2__** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i32* %9, i32** %20, align 8
  %21 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 2
  %22 = getelementptr inbounds %struct.test_case, %struct.test_case* %21, i32 0, i32 3
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32* %8, i32** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i32* %9, i32** %24, align 8
  %25 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 3
  %26 = getelementptr inbounds %struct.test_case, %struct.test_case* %25, i32 0, i32 3
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %26, align 8
  %27 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 0
  %28 = load i32, i32* %3, align 4
  %29 = load i64, i64* @encode_TESTOptional, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* @length_TESTOptional, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* @decode_TESTOptional, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @free_TESTOptional, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @cmp_TESTOptional, align 4
  %38 = load i64, i64* @copy_TESTOptional, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @generic_test(%struct.test_case* %27, i32 %28, i32 16, i32 %30, i32 %32, i32 %34, i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
