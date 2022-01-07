; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_taglessalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_taglessalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"0\0C0\05\A0\03\02\01\01\A1\03\02\01\03\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"alloc 1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0\05\A1\03\02\01\03\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"alloc 2\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0\08\A1\03\02\01\04\02\01\05\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"alloc 3\00", align 1
@__const.test_taglessalloc.tests = private unnamed_addr constant [3 x %struct.test_case] [%struct.test_case { i32 0, i8* inttoptr (i64 14 to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct.TYPE_7__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_7__*), i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.TYPE_7__* bitcast ([8 x i8]* @.str.3 to %struct.TYPE_7__*), i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 10 to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.TYPE_7__* bitcast ([8 x i8]* @.str.5 to %struct.TYPE_7__*), i32* null }], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"\02\01\05\00", align 1
@encode_TESTAlloc = common dso_local global i64 0, align 8
@length_TESTAlloc = common dso_local global i64 0, align 8
@decode_TESTAlloc = common dso_local global i64 0, align 8
@free_TESTAlloc = common dso_local global i64 0, align 8
@cmp_TESTAlloc = common dso_local global i32 0, align 4
@copy_TESTAlloc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_taglessalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_taglessalloc() #0 {
  %1 = alloca [3 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = bitcast [3 x %struct.test_case]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([3 x %struct.test_case]* @__const.test_taglessalloc.tests to i8*), i64 120, i1 false)
  store i32 0, i32* %2, align 4
  store i32 3, i32* %3, align 4
  %9 = call i32 @memset(%struct.TYPE_7__* %4, i32 0, i32 24)
  %10 = call %struct.TYPE_8__* @ecalloc(i32 1, i32 4)
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 3, i32* %15, align 8
  %16 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %1, i64 0, i64 0
  %17 = getelementptr inbounds %struct.test_case, %struct.test_case* %16, i32 0, i32 3
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %17, align 8
  %18 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 24)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 3, i32* %20, align 8
  %21 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %1, i64 0, i64 1
  %22 = getelementptr inbounds %struct.test_case, %struct.test_case* %21, i32 0, i32 3
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %22, align 8
  %23 = call i32 @memset(%struct.TYPE_7__* %6, i32 0, i32 24)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 3, i32* %28, align 8
  %29 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %1, i64 0, i64 2
  %30 = getelementptr inbounds %struct.test_case, %struct.test_case* %29, i32 0, i32 3
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %30, align 8
  %31 = getelementptr inbounds [3 x %struct.test_case], [3 x %struct.test_case]* %1, i64 0, i64 0
  %32 = load i32, i32* %3, align 4
  %33 = load i64, i64* @encode_TESTAlloc, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* @length_TESTAlloc, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* @decode_TESTAlloc, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* @free_TESTAlloc, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @cmp_TESTAlloc, align 4
  %42 = load i64, i64* @copy_TESTAlloc, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @generic_test(%struct.test_case* %31, i32 %32, i32 24, i32 %34, i32 %36, i32 %38, i32 %40, i32 %41, i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %2, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32 @free(%struct.TYPE_8__* %50)
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local %struct.TYPE_8__* @ecalloc(i32, i32) #2

declare dso_local i64 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @free(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
