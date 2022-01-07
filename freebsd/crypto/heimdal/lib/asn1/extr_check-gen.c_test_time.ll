; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_test_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, i32*, i32* }

@.str = private unnamed_addr constant [18 x i8] c"\18\0F19700101011831Z\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"time 1\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\18\0F20090524020240Ztime 2\00", align 1
@__const.test_time.times = private unnamed_addr constant [2 x i32] [i32 4711, i32 1243130560], align 4
@encode_KerberosTime = common dso_local global i64 0, align 8
@length_KerberosTime = common dso_local global i64 0, align 8
@decode_KerberosTime = common dso_local global i64 0, align 8
@free_KerberosTime = common dso_local global i64 0, align 8
@cmp_KerberosTime = common dso_local global i32 0, align 4
@copy_KerberosTime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_time() #0 {
  %1 = alloca [2 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = bitcast [2 x %struct.test_case]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 80, i1 false)
  %5 = bitcast i8* %4 to [2 x %struct.test_case]*
  %6 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.test_case, %struct.test_case* %6, i32 0, i32 1
  store i8* inttoptr (i64 17 to i8*), i8** %7, align 8
  %8 = getelementptr inbounds %struct.test_case, %struct.test_case* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8** %8, align 16
  %9 = getelementptr inbounds %struct.test_case, %struct.test_case* %6, i32 0, i32 3
  store i32* bitcast ([7 x i8]* @.str.1 to i32*), i32** %9, align 8
  %10 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.test_case, %struct.test_case* %10, i32 0, i32 1
  store i8* inttoptr (i64 17 to i8*), i8** %11, align 8
  %12 = getelementptr inbounds %struct.test_case, %struct.test_case* %10, i32 0, i32 2
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8** %12, align 8
  store i32 2, i32* %2, align 4
  %13 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([2 x i32]* @__const.test_time.times to i8*), i64 8, i1 false)
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %15 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 0
  %16 = getelementptr inbounds %struct.test_case, %struct.test_case* %15, i32 0, i32 3
  store i32* %14, i32** %16, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %18 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 1
  %19 = getelementptr inbounds %struct.test_case, %struct.test_case* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  %20 = getelementptr inbounds [2 x %struct.test_case], [2 x %struct.test_case]* %1, i64 0, i64 0
  %21 = load i32, i32* %2, align 4
  %22 = load i64, i64* @encode_KerberosTime, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* @length_KerberosTime, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* @decode_KerberosTime, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* @free_KerberosTime, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @cmp_KerberosTime, align 4
  %31 = load i64, i64* @copy_KerberosTime, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @generic_test(%struct.test_case* %20, i32 %21, i32 4, i32 %23, i32 %25, i32 %27, i32 %29, i32 %30, i32 %32)
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @generic_test(%struct.test_case*, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
