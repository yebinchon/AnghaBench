; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_generate_authenticator_response_pwhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_generate_authenticator_response_pwhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@generate_authenticator_response_pwhash.magic1 = internal constant [39 x i32] [i32 77, i32 97, i32 103, i32 105, i32 99, i32 32, i32 115, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 116, i32 111, i32 32, i32 99, i32 108, i32 105, i32 101, i32 110, i32 116, i32 32, i32 115, i32 105, i32 103, i32 110, i32 105, i32 110, i32 103, i32 32, i32 99, i32 111, i32 110, i32 115, i32 116, i32 97, i32 110, i32 116], align 16
@generate_authenticator_response_pwhash.magic2 = internal constant [41 x i32] [i32 80, i32 97, i32 100, i32 32, i32 116, i32 111, i32 32, i32 109, i32 97, i32 107, i32 101, i32 32, i32 105, i32 116, i32 32, i32 100, i32 111, i32 32, i32 109, i32 111, i32 114, i32 101, i32 32, i32 116, i32 104, i32 97, i32 110, i32 32, i32 111, i32 110, i32 101, i32 32, i32 105, i32 116, i32 101, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110], align 16
@__const.generate_authenticator_response_pwhash.len1 = private unnamed_addr constant [3 x i64] [i64 16, i64 24, i64 156], align 16
@SHA1_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generate_authenticator_response_pwhash(i32* %0, i32* %1, i32* %2, i32* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [16 x i32], align 16
  %17 = alloca [8 x i32], align 16
  %18 = alloca [3 x i8*], align 16
  %19 = alloca [3 x i64], align 16
  %20 = alloca [3 x i8*], align 16
  %21 = alloca [3 x i64], align 16
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = bitcast [3 x i64]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([3 x i64]* @__const.generate_authenticator_response_pwhash.len1 to i8*), i64 24, i1 false)
  %23 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 0
  %24 = load i32, i32* @SHA1_MAC_LEN, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds i64, i64* %23, i64 1
  store i64 8, i64* %26, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  store i64 164, i64* %27, align 8
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %29 = bitcast i32* %28 to i8*
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  store i8* %29, i8** %30, align 16
  %31 = load i32*, i32** %14, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 1
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 2
  store i8* bitcast ([39 x i32]* @generate_authenticator_response_pwhash.magic1 to i8*), i8** %34, align 16
  %35 = load i32*, i32** %15, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 0
  store i8* %36, i8** %37, align 16
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %39 = bitcast i32* %38 to i8*
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 1
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 2
  store i8* bitcast ([41 x i32]* @generate_authenticator_response_pwhash.magic2 to i8*), i8** %41, align 16
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %44 = call i64 @hash_nt_password_hash(i32* %42, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %7
  %47 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %19, i64 0, i64 0
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @sha1_vector(i32 3, i8** %47, i64* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %58 = call i64 @challenge_hash(i32* %53, i32* %54, i32* %55, i64 %56, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52, %46, %7
  store i32 -1, i32* %8, align 4
  br label %66

61:                                               ; preds = %52
  %62 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 0
  %63 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 0
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @sha1_vector(i32 3, i8** %62, i64* %63, i32* %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %61, %60
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @hash_nt_password_hash(i32*, i32*) #2

declare dso_local i32 @sha1_vector(i32, i8**, i64*, i32*) #2

declare dso_local i64 @challenge_hash(i32*, i32*, i32*, i64, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
