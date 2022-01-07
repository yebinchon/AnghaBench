; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_bit_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_bit_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"\03\02\07\80\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bitstring 1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\03\02\05\A0\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bitstring 2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\03\03\07\00\80\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bitstring 3\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\03\01\00\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"bitstring 4\00", align 1
@__const.test_bit_string.tests = private unnamed_addr constant [4 x %struct.test_case] [%struct.test_case { i32 0, i8* inttoptr (i64 4 to i8*), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %struct.TYPE_3__* bitcast ([12 x i8]* @.str.1 to %struct.TYPE_3__*), i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 4 to i8*), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct.TYPE_3__* bitcast ([12 x i8]* @.str.3 to %struct.TYPE_3__*), i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 5 to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct.TYPE_3__* bitcast ([12 x i8]* @.str.5 to %struct.TYPE_3__*), i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 3 to i8*), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), %struct.TYPE_3__* bitcast ([12 x i8]* @.str.7 to %struct.TYPE_3__*), i32* null }], align 16
@encode_KeyUsage = common dso_local global i64 0, align 8
@length_KeyUsage = common dso_local global i64 0, align 8
@decode_KeyUsage = common dso_local global i64 0, align 8
@free_KeyUsage = common dso_local global i64 0, align 8
@cmp_KeyUsage = common dso_local global i32 0, align 4
@copy_KeyUsage = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bit_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bit_string() #0 {
  %1 = alloca [4 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = bitcast [4 x %struct.test_case]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x %struct.test_case]* @__const.test_bit_string.tests to i8*), i64 160, i1 false)
  store i32 4, i32* %2, align 4
  %8 = call i32 @memset(%struct.TYPE_3__* %3, i32 0, i32 12)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 0
  %11 = getelementptr inbounds %struct.test_case, %struct.test_case* %10, i32 0, i32 3
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %11, align 8
  %12 = call i32 @memset(%struct.TYPE_3__* %4, i32 0, i32 12)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 1
  %16 = getelementptr inbounds %struct.test_case, %struct.test_case* %15, i32 0, i32 3
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %16, align 8
  %17 = call i32 @memset(%struct.TYPE_3__* %5, i32 0, i32 12)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 2
  %20 = getelementptr inbounds %struct.test_case, %struct.test_case* %19, i32 0, i32 3
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %20, align 8
  %21 = call i32 @memset(%struct.TYPE_3__* %6, i32 0, i32 12)
  %22 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 3
  %23 = getelementptr inbounds %struct.test_case, %struct.test_case* %22, i32 0, i32 3
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %23, align 8
  %24 = getelementptr inbounds [4 x %struct.test_case], [4 x %struct.test_case]* %1, i64 0, i64 0
  %25 = load i32, i32* %2, align 4
  %26 = load i64, i64* @encode_KeyUsage, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* @length_KeyUsage, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* @decode_KeyUsage, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* @free_KeyUsage, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @cmp_KeyUsage, align 4
  %35 = load i64, i64* @copy_KeyUsage, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @generic_test(%struct.test_case* %24, i32 %25, i32 12, i32 %27, i32 %29, i32 %31, i32 %33, i32 %34, i32 %36)
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
