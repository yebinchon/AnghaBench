; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_ed25519_convert.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_ed25519_convert.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_sign_ed25519_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_sign_ed25519_SECRETKEYBYTES = common dso_local global i32 0, align 4
@crypto_scalarmult_curve25519_BYTES = common dso_local global i32 0, align 4
@crypto_hash_sha512_BYTES = common dso_local global i32 0, align 4
@crypto_sign_ed25519_SEEDBYTES = common dso_local global i32 0, align 4
@keypair_seed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"conversion failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"curve25519 pk: [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"curve25519 sk: [%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [129 x i8] c"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.4 = private unnamed_addr constant [129 x i8] c"02000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.5 = private unnamed_addr constant [129 x i8] c"05000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %12 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %2, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %16 = load i32, i32* @crypto_sign_ed25519_SECRETKEYBYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %4, align 8
  %19 = load i32, i32* @crypto_scalarmult_curve25519_BYTES, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %5, align 8
  %22 = load i32, i32* @crypto_scalarmult_curve25519_BYTES, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %6, align 8
  %25 = load i32, i32* @crypto_scalarmult_curve25519_BYTES, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %7, align 8
  %28 = load i32, i32* @crypto_scalarmult_curve25519_BYTES, align 4
  %29 = mul nsw i32 %28, 2
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  %33 = load i32, i32* @crypto_scalarmult_curve25519_BYTES, align 4
  %34 = mul nsw i32 %33, 2
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %9, align 8
  %38 = load i32, i32* @crypto_hash_sha512_BYTES, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %10, align 8
  %41 = load i32, i32* @crypto_sign_ed25519_SEEDBYTES, align 4
  %42 = load i32, i32* @crypto_hash_sha512_BYTES, align 4
  %43 = icmp sle i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* @keypair_seed, align 4
  %47 = load i32, i32* @crypto_sign_ed25519_SEEDBYTES, align 4
  %48 = call i32 @memcpy(i8* %40, i32 %46, i32 %47)
  %49 = call i32 @crypto_sign_ed25519_seed_keypair(i8* %15, i8* %18, i8* %40)
  %50 = call i32 @crypto_sign_ed25519_pk_to_curve25519(i8* %21, i8* %15)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %0
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %0
  %55 = call i32 @crypto_sign_ed25519_sk_to_curve25519(i8* %27, i8* %18)
  %56 = trunc i64 %31 to i32
  %57 = trunc i64 %20 to i32
  %58 = call i32 @sodium_bin2hex(i8* %32, i32 %56, i8* %21, i32 %57)
  %59 = trunc i64 %36 to i32
  %60 = trunc i64 %26 to i32
  %61 = call i32 @sodium_bin2hex(i8* %37, i32 %59, i8* %27, i32 %60)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %82, %54
  %65 = load i32, i32* %11, align 4
  %66 = icmp ult i32 %65, 500
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = call i32 @crypto_sign_ed25519_keypair(i8* %15, i8* %18)
  %69 = call i32 @crypto_sign_ed25519_pk_to_curve25519(i8* %21, i8* %15)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %67
  %74 = call i32 @crypto_sign_ed25519_sk_to_curve25519(i8* %27, i8* %18)
  %75 = call i32 @crypto_scalarmult_curve25519_base(i8* %24, i8* %27)
  %76 = trunc i64 %20 to i32
  %77 = call i64 @memcmp(i8* %21, i8* %24, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %73
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %64

85:                                               ; preds = %64
  %86 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %87 = call i32 @sodium_hex2bin(i8* %15, i32 %86, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.3, i64 0, i64 0), i32 64, i32* null, i32* null, i32* null)
  %88 = call i32 @crypto_sign_ed25519_pk_to_curve25519(i8* %21, i8* %15)
  %89 = icmp eq i32 %88, -1
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %93 = call i32 @sodium_hex2bin(i8* %15, i32 %92, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.4, i64 0, i64 0), i32 64, i32* null, i32* null, i32* null)
  %94 = call i32 @crypto_sign_ed25519_pk_to_curve25519(i8* %21, i8* %15)
  %95 = icmp eq i32 %94, -1
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %99 = call i32 @sodium_hex2bin(i8* %15, i32 %98, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.5, i64 0, i64 0), i32 64, i32* null, i32* null, i32* null)
  %100 = call i32 @crypto_sign_ed25519_pk_to_curve25519(i8* %21, i8* %15)
  %101 = icmp eq i32 %100, -1
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  %105 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %1, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @crypto_sign_ed25519_seed_keypair(i8*, i8*, i8*) #2

declare dso_local i32 @crypto_sign_ed25519_pk_to_curve25519(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @crypto_sign_ed25519_sk_to_curve25519(i8*, i8*) #2

declare dso_local i32 @sodium_bin2hex(i8*, i32, i8*, i32) #2

declare dso_local i32 @crypto_sign_ed25519_keypair(i8*, i8*) #2

declare dso_local i32 @crypto_scalarmult_curve25519_base(i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @sodium_hex2bin(i8*, i32, i8*, i32, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
