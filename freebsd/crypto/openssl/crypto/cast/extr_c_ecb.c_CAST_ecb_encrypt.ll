; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cast/extr_c_ecb.c_CAST_ecb_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cast/extr_c_ecb.c_CAST_ecb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CAST_ecb_encrypt(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @n2l(i8* %11, i64 %12)
  %14 = load i64, i64* %9, align 8
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %14, i64* %15, align 16
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @n2l(i8* %16, i64 %17)
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @CAST_encrypt(i64* %24, i32* %25)
  br label %31

27:                                               ; preds = %4
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @CAST_decrypt(i64* %28, i32* %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %33 = load i64, i64* %32, align 16
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @l2n(i64 %34, i8* %35)
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @l2n(i64 %39, i8* %40)
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 0, i64* %43, align 16
  store i64 0, i64* %9, align 8
  ret void
}

declare dso_local i32 @n2l(i8*, i64) #1

declare dso_local i32 @CAST_encrypt(i64*, i32*) #1

declare dso_local i32 @CAST_decrypt(i64*, i32*) #1

declare dso_local i32 @l2n(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
