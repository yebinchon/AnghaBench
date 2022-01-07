; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_crypt.c_sm2_plaintext_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_crypt.c_sm2_plaintext_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM2_F_SM2_PLAINTEXT_SIZE = common dso_local global i32 0, align 4
@SM2_R_INVALID_DIGEST = common dso_local global i32 0, align 4
@SM2_R_INVALID_FIELD = common dso_local global i32 0, align 4
@SM2_R_INVALID_ENCODING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm2_plaintext_size(i32* %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @EC_KEY_get0_group(i32* %13)
  %15 = call i64 @ec_field_size(i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @EVP_MD_size(i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @SM2_F_SM2_PLAINTEXT_SIZE, align 4
  %22 = load i32, i32* @SM2_R_INVALID_DIGEST, align 4
  %23 = call i32 @SM2err(i32 %21, i32 %22)
  store i32 0, i32* %5, align 4
  br label %50

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @SM2_F_SM2_PLAINTEXT_SIZE, align 4
  %29 = load i32, i32* @SM2_R_INVALID_FIELD, align 4
  %30 = call i32 @SM2err(i32 %28, i32 %29)
  store i32 0, i32* %5, align 4
  br label %50

31:                                               ; preds = %24
  %32 = load i64, i64* %10, align 8
  %33 = mul i64 2, %32
  %34 = add i64 10, %33
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %34, %36
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load i32, i32* @SM2_F_SM2_PLAINTEXT_SIZE, align 4
  %43 = load i32, i32* @SM2_R_INVALID_ENCODING, align 4
  %44 = call i32 @SM2err(i32 %42, i32 %43)
  store i32 0, i32* %5, align 4
  br label %50

45:                                               ; preds = %31
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub i64 %46, %47
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %41, %27, %20
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @ec_field_size(i32) #1

declare dso_local i32 @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @SM2err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
