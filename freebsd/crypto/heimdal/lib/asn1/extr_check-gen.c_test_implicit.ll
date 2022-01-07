; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_implicit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_implicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"0\0E\80\01\00\A1\06\BF\7F\03\02\01\02\82\01\03\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"implicit 1\00", align 1
@encode_TESTImplicit = common dso_local global i64 0, align 8
@length_TESTImplicit = common dso_local global i64 0, align 8
@decode_TESTImplicit = common dso_local global i64 0, align 8
@free_TESTImplicit = common dso_local global i64 0, align 8
@cmp_TESTImplicit = common dso_local global i32 0, align 4
@copy_TESTImplicit = common dso_local global i64 0, align 8
@decode_TESTImplicit2 = common dso_local global i64 0, align 8
@encode_TESTImplicit2 = common dso_local global i64 0, align 8
@free_TESTImplicit2 = common dso_local global i64 0, align 8
@length_TESTImplicit2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_implicit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_implicit() #0 {
  %1 = alloca [1 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = bitcast [1 x %struct.test_case]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false)
  %6 = bitcast i8* %5 to [1 x %struct.test_case]*
  %7 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.test_case, %struct.test_case* %7, i32 0, i32 1
  store i8* inttoptr (i64 16 to i8*), i8** %8, align 8
  %9 = getelementptr inbounds %struct.test_case, %struct.test_case* %7, i32 0, i32 2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds %struct.test_case, %struct.test_case* %7, i32 0, i32 3
  store %struct.TYPE_5__* bitcast ([11 x i8]* @.str.1 to %struct.TYPE_5__*), %struct.TYPE_5__** %10, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %11 = call i32 @memset(%struct.TYPE_5__* %4, i32 0, i32 16)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 2, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 3, i32* %15, align 8
  %16 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %1, i64 0, i64 0
  %17 = getelementptr inbounds %struct.test_case, %struct.test_case* %16, i32 0, i32 3
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %17, align 8
  %18 = getelementptr inbounds [1 x %struct.test_case], [1 x %struct.test_case]* %1, i64 0, i64 0
  %19 = load i32, i32* %3, align 4
  %20 = load i64, i64* @encode_TESTImplicit, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* @length_TESTImplicit, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* @decode_TESTImplicit, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* @free_TESTImplicit, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @cmp_TESTImplicit, align 4
  %29 = load i64, i64* @copy_TESTImplicit, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = call i64 @generic_test(%struct.test_case* %18, i32 %19, i32 16, i32 %21, i32 %23, i32 %25, i32 %27, i32 %28, i32* %30)
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i64 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
