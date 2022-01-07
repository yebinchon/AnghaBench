; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_des_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_gnutls.c_des_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GCRY_CIPHER_DES = common dso_local global i32 0, align 4
@GCRY_CIPHER_MODE_ECB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @des_encrypt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %34, %3
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 7
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = ashr i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %23, %24
  %26 = or i32 %25, 1
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 7, %31
  %33 = shl i32 %30, %32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, 1
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @GCRY_CIPHER_DES, align 4
  %44 = load i32, i32* @GCRY_CIPHER_MODE_ECB, align 4
  %45 = call i32 @gcry_cipher_open(i32* %7, i32 %43, i32 %44, i32 0)
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %48 = call i32 @gcry_cipher_setkey(i32 %46, i32* %47, i32 8)
  %49 = call i32 @gcry_err_code(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @gcry_cipher_encrypt(i32 %50, i32* %51, i32 8, i32* %52, i32 8)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @gcry_cipher_close(i32 %54)
  ret i32 0
}

declare dso_local i32 @gcry_cipher_open(i32*, i32, i32, i32) #1

declare dso_local i32 @gcry_err_code(i32) #1

declare dso_local i32 @gcry_cipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @gcry_cipher_encrypt(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @gcry_cipher_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
