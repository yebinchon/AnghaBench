; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_ecb_enc.c_DES_ecb_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_ecb_enc.c_DES_ecb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_ecb_encrypt(i8** %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8* %15, i8** %11, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @c2l(i8* %19, i64 %20)
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %22, i64* %23, align 16
  %24 = load i8*, i8** %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @c2l(i8* %24, i64 %25)
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @DES_encrypt1(i64* %29, i32* %30, i32 %31)
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %34 = load i64, i64* %33, align 16
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @l2c(i64 %35, i8* %36)
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @l2c(i64 %40, i8* %41)
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 0, i64* %44, align 16
  store i64 0, i64* %9, align 8
  ret void
}

declare dso_local i32 @c2l(i8*, i64) #1

declare dso_local i32 @DES_encrypt1(i64*, i32*, i32) #1

declare dso_local i32 @l2c(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
