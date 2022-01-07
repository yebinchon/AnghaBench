; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_choice.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"\A1\03\02\01\01\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"large choice 1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\A2\03\02\01\02\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"large choice 2\00", align 1
@choice_TESTChoice1_i1 = common dso_local global i32 0, align 4
@choice_TESTChoice1_i2 = common dso_local global i32 0, align 4
@encode_TESTChoice1 = common dso_local global i64 0, align 8
@length_TESTChoice1 = common dso_local global i64 0, align 8
@decode_TESTChoice1 = common dso_local global i64 0, align 8
@free_TESTChoice1 = common dso_local global i64 0, align 8
@cmp_TESTChoice = common dso_local global i32 0, align 4
@copy_TESTChoice1 = common dso_local global i64 0, align 8
@choice_TESTChoice2_asn1_ellipsis = common dso_local global i32 0, align 4
@encode_TESTChoice2 = common dso_local global i64 0, align 8
@length_TESTChoice2 = common dso_local global i64 0, align 8
@decode_TESTChoice2 = common dso_local global i64 0, align 8
@free_TESTChoice2 = common dso_local global i64 0, align 8
@copy_TESTChoice2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_choice() #0 {
  %1 = alloca [2 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = bitcast [2 x %struct.test_case]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 80, i1 false)
  %8 = bitcast i8* %7 to [2 x %struct.test_case]*
  %9 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.test_case, %struct.test_case* %9, i32 0, i32 1
  store i8* inttoptr (i64 5 to i8*), i8** %10, align 8
  %11 = getelementptr inbounds %struct.test_case, %struct.test_case* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds %struct.test_case, %struct.test_case* %9, i32 0, i32 3
  store %struct.TYPE_8__* bitcast ([15 x i8]* @.str.1 to %struct.TYPE_8__*), %struct.TYPE_8__** %12, align 8
  %13 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %8, i32 0, i32 1
  %14 = getelementptr inbounds %struct.test_case, %struct.test_case* %13, i32 0, i32 1
  store i8* inttoptr (i64 5 to i8*), i8** %14, align 8
  %15 = getelementptr inbounds %struct.test_case, %struct.test_case* %13, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.test_case, %struct.test_case* %13, i32 0, i32 3
  store %struct.TYPE_8__* bitcast ([15 x i8]* @.str.3 to %struct.TYPE_8__*), %struct.TYPE_8__** %16, align 8
  store i32 0, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %17 = call i32 @memset(%struct.TYPE_8__* %4, i32 0, i32 32)
  %18 = load i32, i32* @choice_TESTChoice1_i1, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 0
  %23 = getelementptr inbounds %struct.test_case, %struct.test_case* %22, i32 0, i32 3
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %23, align 8
  %24 = call i32 @memset(%struct.TYPE_8__* %5, i32 0, i32 32)
  %25 = load i32, i32* @choice_TESTChoice1_i2, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32 2, i32* %28, align 4
  %29 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 1
  %30 = getelementptr inbounds %struct.test_case, %struct.test_case* %29, i32 0, i32 3
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %30, align 8
  %31 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 0
  %32 = load i32, i32* %3, align 4
  %33 = load i64, i64* @encode_TESTChoice1, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @length_TESTChoice1, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* @decode_TESTChoice1, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* @free_TESTChoice1, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @cmp_TESTChoice, align 4
  %42 = load i64, i64* @copy_TESTChoice1, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @generic_test(%struct.test_case* %31, i32 %32, i32 32, i32 %34, i32 %36, i32 %38, i32 %40, i32 %41, i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %2, align 4
  %49 = call i32 @memset(%struct.TYPE_8__* %6, i32 0, i32 32)
  %50 = load i32, i32* @choice_TESTChoice2_asn1_ellipsis, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 5, i32* %57, align 8
  %58 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 1
  %59 = getelementptr inbounds %struct.test_case, %struct.test_case* %58, i32 0, i32 3
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %59, align 8
  %60 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 0
  %61 = load i32, i32* %3, align 4
  %62 = load i64, i64* @encode_TESTChoice2, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* @length_TESTChoice2, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* @decode_TESTChoice2, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i64, i64* @free_TESTChoice2, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @cmp_TESTChoice, align 4
  %71 = load i64, i64* @copy_TESTChoice2, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @generic_test(%struct.test_case* %60, i32 %61, i32 32, i32 %63, i32 %65, i32 %67, i32 %69, i32 %70, i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %2, align 4
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i64 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
