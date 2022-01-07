; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cfb128.c_CRYPTO_cfb128_1_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cfb128.c_CRYPTO_cfb128_1_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_cfb128_1_encrypt(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [1 x i8], align 1
  %19 = alloca [1 x i8], align 1
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %20

20:                                               ; preds = %76, %8
  %21 = load i64, i64* %17, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %20
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %17, align 8
  %27 = udiv i64 %26, 8
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i64, i64* %17, align 8
  %32 = urem i64 %31, 8
  %33 = sub i64 7, %32
  %34 = trunc i64 %33 to i32
  %35 = shl i32 1, %34
  %36 = and i32 %30, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 128, i32 0
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i64 0, i64 0
  store i8 %40, i8* %41, align 1
  %42 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i64 0, i64 0
  %43 = getelementptr inbounds [1 x i8], [1 x i8]* %19, i64 0, i64 0
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @cfbr_encrypt_block(i8* %42, i8* %43, i32 1, i8* %44, i8* %45, i32 %46, i32 %47)
  %49 = load i8*, i8** %10, align 8
  %50 = load i64, i64* %17, align 8
  %51 = udiv i64 %50, 8
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i64, i64* %17, align 8
  %56 = urem i64 %55, 8
  %57 = sub i64 7, %56
  %58 = trunc i64 %57 to i32
  %59 = shl i32 1, %58
  %60 = xor i32 %59, -1
  %61 = and i32 %54, %60
  %62 = getelementptr inbounds [1 x i8], [1 x i8]* %19, i64 0, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 128
  %66 = load i64, i64* %17, align 8
  %67 = urem i64 %66, 8
  %68 = trunc i64 %67 to i32
  %69 = ashr i32 %65, %68
  %70 = or i32 %61, %69
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %10, align 8
  %73 = load i64, i64* %17, align 8
  %74 = udiv i64 %73, 8
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8 %71, i8* %75, align 1
  br label %76

76:                                               ; preds = %24
  %77 = load i64, i64* %17, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %17, align 8
  br label %20

79:                                               ; preds = %20
  ret void
}

declare dso_local i32 @cfbr_encrypt_block(i8*, i8*, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
