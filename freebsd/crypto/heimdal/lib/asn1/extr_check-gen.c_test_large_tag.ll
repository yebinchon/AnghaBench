; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_large_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_large_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"0\0D\BF\7F\03\02\01\01\BF\81\00\03\02\01\02\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"large tag 1\00", align 1
@encode_TESTLargeTag = common dso_local global i64 0, align 8
@length_TESTLargeTag = common dso_local global i64 0, align 8
@decode_TESTLargeTag = common dso_local global i64 0, align 8
@free_TESTLargeTag = common dso_local global i64 0, align 8
@cmp_TESTLargeTag = common dso_local global i32 0, align 4
@copy_TESTLargeTag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_large_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_large_tag() #0 {
  %1 = alloca [1 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = bitcast [1 x %struct.test_case]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false)
  %5 = bitcast i8* %4 to [1 x %struct.test_case]*
  %6 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.test_case, %struct.test_case* %6, i32 0, i32 1
  store i8* inttoptr (i64 15 to i8*), i8** %7, align 8
  %8 = getelementptr inbounds %struct.test_case, %struct.test_case* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8** %8, align 16
  %9 = getelementptr inbounds %struct.test_case, %struct.test_case* %6, i32 0, i32 3
  store %struct.TYPE_3__* bitcast ([12 x i8]* @.str.1 to %struct.TYPE_3__*), %struct.TYPE_3__** %9, align 8
  store i32 1, i32* %2, align 4
  %10 = call i32 @memset(%struct.TYPE_3__* %3, i32 0, i32 8)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 2, i32* %12, align 4
  %13 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %1, i64 0, i64 0
  %14 = getelementptr inbounds %struct.test_case, %struct.test_case* %13, i32 0, i32 3
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %14, align 8
  %15 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %1, i64 0, i64 0
  %16 = load i32, i32* %2, align 4
  %17 = load i64, i64* @encode_TESTLargeTag, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* @length_TESTLargeTag, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i64, i64* @decode_TESTLargeTag, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* @free_TESTLargeTag, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @cmp_TESTLargeTag, align 4
  %26 = load i64, i64* @copy_TESTLargeTag, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @generic_test(%struct.test_case* %15, i32 %16, i32 8, i32 %18, i32 %20, i32 %22, i32 %24, i32 %25, i32 %27)
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
