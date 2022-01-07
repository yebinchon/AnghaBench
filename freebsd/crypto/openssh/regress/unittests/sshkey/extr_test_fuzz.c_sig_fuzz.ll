; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_fuzz.c_sig_fuzz.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_fuzz.c_sig_fuzz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32 }
%struct.fuzz = type { i32 }

@__const.sig_fuzz.c = private unnamed_addr constant [23 x i8] c"some junk to be signed\00", align 16
@FUZZ_1_BIT_FLIP = common dso_local global i32 0, align 4
@FUZZ_1_BYTE_FLIP = common dso_local global i32 0, align 4
@FUZZ_2_BYTE_FLIP = common dso_local global i32 0, align 4
@FUZZ_TRUNCATE_START = common dso_local global i32 0, align 4
@FUZZ_TRUNCATE_END = common dso_local global i32 0, align 4
@onerror = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sshkey*, i8*)* @sig_fuzz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_fuzz(%struct.sshkey* %0, i8* %1) #0 {
  %3 = alloca %struct.sshkey*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fuzz*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [23 x i8], align 16
  %8 = alloca i64, align 8
  store %struct.sshkey* %0, %struct.sshkey** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = bitcast [23 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.sig_fuzz.c, i32 0, i32 0), i64 23, i1 false)
  %10 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %11 = getelementptr inbounds [23 x i8], [23 x i8]* %7, i64 0, i64 0
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @sshkey_sign(%struct.sshkey* %10, i8** %6, i64* %8, i8* %11, i32 23, i8* %12, i32 0)
  %14 = call i32 @ASSERT_INT_EQ(i32 %13, i32 0)
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @ASSERT_SIZE_T_GT(i64 %15, i32 0)
  %17 = load i32, i32* @FUZZ_1_BIT_FLIP, align 4
  %18 = load i32, i32* @FUZZ_1_BYTE_FLIP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FUZZ_2_BYTE_FLIP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FUZZ_TRUNCATE_START, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FUZZ_TRUNCATE_END, align 4
  %25 = or i32 %23, %24
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call %struct.fuzz* @fuzz_begin(i32 %25, i8* %26, i64 %27)
  store %struct.fuzz* %28, %struct.fuzz** %5, align 8
  %29 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds [23 x i8], [23 x i8]* %7, i64 0, i64 0
  %33 = call i32 @sshkey_verify(%struct.sshkey* %29, i8* %30, i64 %31, i8* %32, i32 23, i32* null, i32 0)
  %34 = call i32 @ASSERT_INT_EQ(i32 %33, i32 0)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32, i32* @onerror, align 4
  %38 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %39 = call i32 @TEST_ONERROR(i32 %37, %struct.fuzz* %38)
  br label %40

40:                                               ; preds = %59, %2
  %41 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %42 = call i32 @fuzz_done(%struct.fuzz* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %47 = call i64 @fuzz_matches_original(%struct.fuzz* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %59

50:                                               ; preds = %45
  %51 = load %struct.sshkey*, %struct.sshkey** %3, align 8
  %52 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %53 = call i8* @fuzz_ptr(%struct.fuzz* %52)
  %54 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %55 = call i64 @fuzz_len(%struct.fuzz* %54)
  %56 = getelementptr inbounds [23 x i8], [23 x i8]* %7, i64 0, i64 0
  %57 = call i32 @sshkey_verify(%struct.sshkey* %51, i8* %53, i64 %55, i8* %56, i32 23, i32* null, i32 0)
  %58 = call i32 @ASSERT_INT_NE(i32 %57, i32 0)
  br label %59

59:                                               ; preds = %50, %49
  %60 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %61 = call i32 @fuzz_next(%struct.fuzz* %60)
  br label %40

62:                                               ; preds = %40
  %63 = load %struct.fuzz*, %struct.fuzz** %5, align 8
  %64 = call i32 @fuzz_cleanup(%struct.fuzz* %63)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #2

declare dso_local i32 @sshkey_sign(%struct.sshkey*, i8**, i64*, i8*, i32, i8*, i32) #2

declare dso_local i32 @ASSERT_SIZE_T_GT(i64, i32) #2

declare dso_local %struct.fuzz* @fuzz_begin(i32, i8*, i64) #2

declare dso_local i32 @sshkey_verify(%struct.sshkey*, i8*, i64, i8*, i32, i32*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @TEST_ONERROR(i32, %struct.fuzz*) #2

declare dso_local i32 @fuzz_done(%struct.fuzz*) #2

declare dso_local i64 @fuzz_matches_original(%struct.fuzz*) #2

declare dso_local i32 @ASSERT_INT_NE(i32, i32) #2

declare dso_local i8* @fuzz_ptr(%struct.fuzz*) #2

declare dso_local i64 @fuzz_len(%struct.fuzz*) #2

declare dso_local i32 @fuzz_next(%struct.fuzz*) #2

declare dso_local i32 @fuzz_cleanup(%struct.fuzz*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
