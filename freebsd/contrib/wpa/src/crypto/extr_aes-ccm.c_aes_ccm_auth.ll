; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ccm.c_aes_ccm_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ccm.c_aes_ccm_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, i32*)* @aes_ccm_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_ccm_auth(i8* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %13 = urem i64 %11, %12
  store i64 %13, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %31, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %18 = udiv i64 %16, %17
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @xor_aes_block(i32* %21, i32* %22)
  %24 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 %24
  store i32* %26, i32** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @aes_encrypt(i8* %27, i32* %28, i32* %29)
  br label %31

31:                                               ; preds = %20
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %10, align 8
  br label %14

34:                                               ; preds = %14
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %6, align 8
  %45 = load i32, i32* %43, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %38

54:                                               ; preds = %38
  %55 = load i8*, i8** %5, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @aes_encrypt(i8* %55, i32* %56, i32* %57)
  br label %59

59:                                               ; preds = %54, %34
  ret void
}

declare dso_local i32 @xor_aes_block(i32*, i32*) #1

declare dso_local i32 @aes_encrypt(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
