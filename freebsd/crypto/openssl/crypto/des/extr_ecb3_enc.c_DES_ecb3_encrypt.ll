; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_ecb3_enc.c_DES_ecb3_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_ecb3_enc.c_DES_ecb3_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_ecb3_encrypt(i8** %0, i8** %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8* %20, i8** %16, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8* %23, i8** %17, align 8
  %24 = load i8*, i8** %16, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @c2l(i8* %24, i32 %25)
  %27 = load i8*, i8** %16, align 8
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @c2l(i8* %27, i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %14, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %6
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @DES_encrypt3(i32* %37, i32* %38, i32* %39, i32* %40)
  br label %48

42:                                               ; preds = %6
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @DES_decrypt3(i32* %43, i32* %44, i32* %45, i32* %46)
  br label %48

48:                                               ; preds = %42, %36
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i8*, i8** %17, align 8
  %55 = call i32 @l2c(i32 %53, i8* %54)
  %56 = load i32, i32* %14, align 4
  %57 = load i8*, i8** %17, align 8
  %58 = call i32 @l2c(i32 %56, i8* %57)
  ret void
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @DES_encrypt3(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DES_decrypt3(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @l2c(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
