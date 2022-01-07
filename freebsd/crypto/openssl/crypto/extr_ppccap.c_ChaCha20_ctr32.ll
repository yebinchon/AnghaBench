; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_ppccap.c_ChaCha20_ctr32.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_ppccap.c_ChaCha20_ctr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_ppccap_P = common dso_local global i32 0, align 4
@PPC_CRYPTO207 = common dso_local global i32 0, align 4
@PPC_ALTIVEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ChaCha20_ctr32(i8* %0, i8* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* @OPENSSL_ppccap_P, align 4
  %12 = load i32, i32* @PPC_CRYPTO207, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @ChaCha20_ctr32_vsx(i8* %16, i8* %17, i64 %18, i32* %19, i32* %20)
  br label %43

22:                                               ; preds = %5
  %23 = load i32, i32* @OPENSSL_ppccap_P, align 4
  %24 = load i32, i32* @PPC_ALTIVEC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @ChaCha20_ctr32_vmx(i8* %28, i8* %29, i64 %30, i32* %31, i32* %32)
  br label %41

34:                                               ; preds = %22
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @ChaCha20_ctr32_int(i8* %35, i8* %36, i64 %37, i32* %38, i32* %39)
  br label %41

41:                                               ; preds = %34, %27
  %42 = phi i32 [ %33, %27 ], [ %40, %34 ]
  br label %43

43:                                               ; preds = %41, %15
  %44 = phi i32 [ %21, %15 ], [ %42, %41 ]
  ret void
}

declare dso_local i32 @ChaCha20_ctr32_vsx(i8*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @ChaCha20_ctr32_vmx(i8*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @ChaCha20_ctr32_int(i8*, i8*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
