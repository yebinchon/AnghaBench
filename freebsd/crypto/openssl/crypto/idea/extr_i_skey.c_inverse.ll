; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/idea/extr_i_skey.c_inverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/idea/extr_i_skey.c_inverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @inverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inverse(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  br label %49

13:                                               ; preds = %1
  store i64 65537, i64* %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %4, align 8
  store i64 1, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %45, %13
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = srem i64 %17, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i64, i64* %4, align 8
  %24 = sdiv i64 %22, %23
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load i64, i64* %8, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 65537, %31
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %30, %27
  br label %44

34:                                               ; preds = %16
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = mul nsw i64 %39, %40
  %42 = sub nsw i64 %38, %41
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %34, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %16, label %48

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %12
  %50 = load i64, i64* %8, align 8
  %51 = trunc i64 %50 to i32
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
