; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ccm.c_aes_ccm_encr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_aes-ccm.c_aes_ccm_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32*, i64, i32*, i32*)* @aes_ccm_encr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_ccm_encr(i8* %0, i64 %1, i32* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %17 = urem i64 %15, %16
  store i64 %17, i64* %13, align 8
  store i64 1, i64* %14, align 8
  br label %18

18:                                               ; preds = %44, %6
  %19 = load i64, i64* %14, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %22 = udiv i64 %20, %21
  %23 = icmp ule i64 %19, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load i32*, i32** %12, align 8
  %26 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %27 = sub i64 %26, 2
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i64, i64* %14, align 8
  %30 = call i32 @WPA_PUT_BE16(i32* %28, i64 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @aes_encrypt(i8* %31, i32* %32, i32* %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @xor_aes_block(i32* %35, i32* %36)
  %38 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 %38
  store i32* %40, i32** %11, align 8
  %41 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 %41
  store i32* %43, i32** %9, align 8
  br label %44

44:                                               ; preds = %24
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %14, align 8
  br label %18

47:                                               ; preds = %18
  %48 = load i64, i64* %13, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = load i32*, i32** %12, align 8
  %52 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %53 = sub i64 %52, 2
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @WPA_PUT_BE16(i32* %54, i64 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @aes_encrypt(i8* %57, i32* %58, i32* %59)
  store i64 0, i64* %14, align 8
  br label %61

61:                                               ; preds = %73, %50
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %9, align 8
  %68 = load i32, i32* %66, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %11, align 8
  %71 = load i32, i32* %69, align 4
  %72 = xor i32 %71, %68
  store i32 %72, i32* %69, align 4
  br label %73

73:                                               ; preds = %65
  %74 = load i64, i64* %14, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %14, align 8
  br label %61

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %47
  ret void
}

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #1

declare dso_local i32 @aes_encrypt(i8*, i32*, i32*) #1

declare dso_local i32 @xor_aes_block(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
