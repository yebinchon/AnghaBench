; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_check_fail_universal_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-der.c_check_fail_universal_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"x & 3 == 1 universal string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"x & 3 == 2 universal string\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"x & 3 == 3 universal string\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [8 x i8] zeroinitializer, align 1
@__const.check_fail_universal_string.tests = private unnamed_addr constant [6 x %struct.test_case] [%struct.test_case { i32 0, i8* inttoptr (i64 1 to i8*), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32* bitcast ([28 x i8]* @.str.1 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 2 to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* bitcast ([28 x i8]* @.str.3 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 3 to i8*), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32* bitcast ([28 x i8]* @.str.5 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 5 to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32* bitcast ([28 x i8]* @.str.1 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 6 to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32* bitcast ([28 x i8]* @.str.3 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32* bitcast ([28 x i8]* @.str.5 to i32*) }], align 16
@der_get_universal_string = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_fail_universal_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fail_universal_string() #0 {
  %1 = alloca [6 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = bitcast [6 x %struct.test_case]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([6 x %struct.test_case]* @__const.check_fail_universal_string.tests to i8*), i64 192, i1 false)
  store i32 6, i32* %2, align 4
  %4 = getelementptr inbounds [6 x %struct.test_case], [6 x %struct.test_case]* %1, i64 0, i64 0
  %5 = load i32, i32* %2, align 4
  %6 = load i64, i64* @der_get_universal_string, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i32 @generic_decode_fail(%struct.test_case* %4, i32 %5, i32 4, i32 %7)
  ret i32 %8
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @generic_decode_fail(%struct.test_case*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
