; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_check_fail_largetag.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_check_fail_largetag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_case = type { i32, i8*, i8*, i32* }

@.str = private unnamed_addr constant [15 x i8] c"0\0C\BF\87\FF\FF\FF\FF\FF\7F\03\02\01\01\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"tag overflow\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"empty buffer\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"0\05\A1\03\02\02\01\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"one too short\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"0\04\A1\03\02\02\01two too short\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"0\03\A1\03\02\02\01\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"three too short\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"0\02\A1\03\02\02\01\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"four too short\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"0\01\A1\03\02\02\01\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"five too short\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"0\00\A1\03\02\02\01\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"six too short\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"0\05\A1\04\02\02\01\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"inner one too long\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"0\00\A1\02\02\02\01\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"inner one too short\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"0\05\BF\7F\03\02\02\01\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"0\06\BFd\03\02\01\01\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"wrong tag\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"0\08\BF\9A\9B8\03\02\01\01\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"still wrong tag\00", align 1
@__const.check_fail_largetag.tests = private unnamed_addr constant [13 x %struct.test_case] [%struct.test_case { i32 0, i8* inttoptr (i64 14 to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32* bitcast ([13 x i8]* @.str.1 to i32*) }, %struct.test_case { i32 0, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i32* bitcast ([13 x i8]* @.str.3 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32* bitcast ([14 x i8]* @.str.5 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32* null }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32* bitcast ([16 x i8]* @.str.8 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32* bitcast ([15 x i8]* @.str.10 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32* bitcast ([15 x i8]* @.str.12 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32* bitcast ([14 x i8]* @.str.14 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32* bitcast ([19 x i8]* @.str.16 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 7 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32* bitcast ([20 x i8]* @.str.18 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 8 to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32* bitcast ([20 x i8]* @.str.18 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 8 to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32* bitcast ([10 x i8]* @.str.21 to i32*) }, %struct.test_case { i32 0, i8* inttoptr (i64 10 to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32* bitcast ([16 x i8]* @.str.23 to i32*) }], align 16
@decode_TESTLargeTag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_fail_largetag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fail_largetag() #0 {
  %1 = alloca [13 x %struct.test_case], align 16
  %2 = alloca i32, align 4
  %3 = bitcast [13 x %struct.test_case]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([13 x %struct.test_case]* @__const.check_fail_largetag.tests to i8*), i64 416, i1 false)
  store i32 13, i32* %2, align 4
  %4 = getelementptr inbounds [13 x %struct.test_case], [13 x %struct.test_case]* %1, i64 0, i64 0
  %5 = load i32, i32* %2, align 4
  %6 = load i64, i64* @decode_TESTLargeTag, align 8
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
