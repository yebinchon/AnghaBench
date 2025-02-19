; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/des/extr_des_ecb.c_des_ecb_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/des/extr_des_ecb.c_des_ecb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @des_ecb_encrypt(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @c2l(i8* %15, i64 %16)
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %18, i64* %19, align 16
  %20 = load i8*, i8** %11, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @c2l(i8* %20, i64 %21)
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @des_encrypt1(i64* %25, i32 %26, i32 %27)
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %30 = load i64, i64* %29, align 16
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @l2c(i64 %31, i8* %32)
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @l2c(i64 %36, i8* %37)
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 0, i64* %40, align 16
  store i64 0, i64* %9, align 8
  ret void
}

declare dso_local i32 @c2l(i8*, i64) #1

declare dso_local i32 @des_encrypt1(i64*, i32, i32) #1

declare dso_local i32 @l2c(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
