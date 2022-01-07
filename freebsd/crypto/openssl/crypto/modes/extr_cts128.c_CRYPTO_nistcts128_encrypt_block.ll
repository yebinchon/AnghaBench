; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cts128.c_CRYPTO_nistcts128_encrypt_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cts128.c_CRYPTO_nistcts128_encrypt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_nistcts128_encrypt_block(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32 (i8*, i8*, i8*)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i8*, i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 (i8*, i8*, i8*)* %5, i32 (i8*, i8*, i8*)** %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ult i64 %16, 16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %78

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  %21 = urem i64 %20, 16
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* %10, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %10, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %31 = call i32 @CRYPTO_cbc128_encrypt(i8* %25, i8* %26, i64 %27, i8* %28, i8* %29, i32 (i8*, i8*, i8*)* %30)
  %32 = load i64, i64* %14, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i64, i64* %10, align 8
  store i64 %35, i64* %7, align 8
  br label %78

36:                                               ; preds = %19
  %37 = load i64, i64* %10, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %42, i8** %9, align 8
  store i64 0, i64* %15, align 8
  br label %43

43:                                               ; preds = %60, %36
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %14, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %15, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %15, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = xor i32 %57, %52
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  br label %60

60:                                               ; preds = %47
  %61 = load i64, i64* %15, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %15, align 8
  br label %43

63:                                               ; preds = %43
  %64 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 %64(i8* %65, i8* %66, i8* %67)
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 -16
  %71 = load i64, i64* %14, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @memcpy(i8* %72, i8* %73, i32 16)
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %14, align 8
  %77 = add i64 %75, %76
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %63, %34, %18
  %79 = load i64, i64* %7, align 8
  ret i64 %79
}

declare dso_local i32 @CRYPTO_cbc128_encrypt(i8*, i8*, i64, i8*, i8*, i32 (i8*, i8*, i8*)*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
