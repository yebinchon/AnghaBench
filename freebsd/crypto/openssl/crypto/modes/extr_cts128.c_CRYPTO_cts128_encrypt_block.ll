; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cts128.c_CRYPTO_cts128_encrypt_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cts128.c_CRYPTO_cts128_encrypt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_cts128_encrypt_block(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32 (i8*, i8*, i8*)* %5) #0 {
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
  %17 = icmp ule i64 %16, 16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %80

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  %21 = urem i64 %20, 16
  store i64 %21, i64* %14, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 16, i64* %14, align 8
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %10, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %34 = call i32 @CRYPTO_cbc128_encrypt(i8* %28, i8* %29, i64 %30, i8* %31, i8* %32, i32 (i8*, i8*, i8*)* %33)
  %35 = load i64, i64* %10, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %35
  store i8* %37, i8** %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %9, align 8
  store i64 0, i64* %15, align 8
  br label %41

41:                                               ; preds = %58, %24
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %15, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8*, i8** %12, align 8
  %52 = load i64, i64* %15, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %55, %50
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  br label %58

58:                                               ; preds = %45
  %59 = load i64, i64* %15, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %15, align 8
  br label %41

61:                                               ; preds = %41
  %62 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 %62(i8* %63, i8* %64, i8* %65)
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 -16
  %70 = load i64, i64* %14, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memcpy(i8* %67, i8* %69, i32 %71)
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -16
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @memcpy(i8* %74, i8* %75, i32 16)
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %14, align 8
  %79 = add i64 %77, %78
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %61, %18
  %81 = load i64, i64* %7, align 8
  ret i64 %81
}

declare dso_local i32 @CRYPTO_cbc128_encrypt(i8*, i8*, i64, i8*, i8*, i32 (i8*, i8*, i8*)*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
