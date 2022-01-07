; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_sshkey.c_signature_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_sshkey.c_signature_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }

@__const.signature_tests.lens = private unnamed_addr constant [23 x i64] [i64 1, i64 2, i64 7, i64 8, i64 9, i64 15, i64 16, i64 17, i64 31, i64 32, i64 33, i64 127, i64 128, i64 129, i64 255, i64 256, i64 257, i64 1023, i64 1024, i64 1025, i64 2047, i64 2048, i64 2049], align 16
@.str = private unnamed_addr constant [26 x i8] c"%s key, banana length %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sshkey*, %struct.sshkey*, i8*)* @signature_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signature_tests(%struct.sshkey* %0, %struct.sshkey* %1, i8* %2) #0 {
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca %struct.sshkey*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2049 x i32], align 16
  %9 = alloca [23 x i64], align 16
  store %struct.sshkey* %0, %struct.sshkey** %4, align 8
  store %struct.sshkey* %1, %struct.sshkey** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast [23 x i64]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([23 x i64]* @__const.signature_tests.lens to i8*), i64 184, i1 false)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %38, %3
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 23
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %17 = call i32 @sshkey_type(%struct.sshkey* %16)
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [23 x i64], [23 x i64]* %9, i64 0, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @test_subtest_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %21)
  %23 = getelementptr inbounds [2049 x i32], [2049 x i32]* %8, i64 0, i64 0
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [23 x i64], [23 x i64]* %9, i64 0, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @banana(i32* %23, i64 %27)
  %29 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %30 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds [2049 x i32], [2049 x i32]* %8, i64 0, i64 0
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [23 x i64], [23 x i64]* %9, i64 0, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @signature_test(%struct.sshkey* %29, %struct.sshkey* %30, i8* %31, i32* %32, i64 %36)
  br label %38

38:                                               ; preds = %15
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %11

41:                                               ; preds = %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_subtest_info(i8*, i32, i64) #2

declare dso_local i32 @sshkey_type(%struct.sshkey*) #2

declare dso_local i32 @banana(i32*, i64) #2

declare dso_local i32 @signature_test(%struct.sshkey*, %struct.sshkey*, i8*, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
