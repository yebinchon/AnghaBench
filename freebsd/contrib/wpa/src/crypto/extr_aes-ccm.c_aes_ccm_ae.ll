; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ccm.c_aes_ccm_ae.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ccm.c_aes_ccm_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_ccm_ae(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64 %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i64 2, i64* %22, align 8
  %28 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %24, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %25, align 8
  %32 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %26, align 8
  %35 = load i64, i64* %19, align 8
  %36 = icmp ugt i64 %35, 30
  br i1 %36, label %42, label %37

37:                                               ; preds = %10
  %38 = load i64, i64* %15, align 8
  %39 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %10
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %75

43:                                               ; preds = %37
  %44 = load i32*, i32** %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i8* @aes_encrypt_init(i32* %44, i64 %45)
  store i8* %46, i8** %23, align 8
  %47 = load i8*, i8** %23, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %75

50:                                               ; preds = %43
  %51 = load i8*, i8** %23, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* %17, align 8
  %57 = call i32 @aes_ccm_auth_start(i8* %51, i64 %52, i64 2, i32* %53, i32* %54, i64 %55, i64 %56, i32* %31)
  %58 = load i8*, i8** %23, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = load i64, i64* %17, align 8
  %61 = call i32 @aes_ccm_auth(i8* %58, i32* %59, i64 %60, i32* %31)
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @aes_ccm_encr_start(i64 2, i32* %62, i32* %34)
  %64 = load i8*, i8** %23, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = call i32 @aes_ccm_encr(i8* %64, i64 2, i32* %65, i64 %66, i32* %67, i32* %34)
  %69 = load i8*, i8** %23, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i32*, i32** %21, align 8
  %72 = call i32 @aes_ccm_encr_auth(i8* %69, i64 %70, i32* %31, i32* %34, i32* %71)
  %73 = load i8*, i8** %23, align 8
  %74 = call i32 @aes_encrypt_deinit(i8* %73)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %27, align 4
  br label %75

75:                                               ; preds = %50, %49, %42
  %76 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @aes_encrypt_init(i32*, i64) #2

declare dso_local i32 @aes_ccm_auth_start(i8*, i64, i64, i32*, i32*, i64, i64, i32*) #2

declare dso_local i32 @aes_ccm_auth(i8*, i32*, i64, i32*) #2

declare dso_local i32 @aes_ccm_encr_start(i64, i32*, i32*) #2

declare dso_local i32 @aes_ccm_encr(i8*, i64, i32*, i64, i32*, i32*) #2

declare dso_local i32 @aes_ccm_encr_auth(i8*, i64, i32*, i32*, i32*) #2

declare dso_local i32 @aes_encrypt_deinit(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
