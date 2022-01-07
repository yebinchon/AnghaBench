; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_o_time.c_date_to_julian.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_o_time.c_date_to_julian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32)* @date_to_julian to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @date_to_julian(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, 4800
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 %9, 14
  %11 = sdiv i32 %10, 12
  %12 = add nsw i32 %8, %11
  %13 = mul nsw i32 1461, %12
  %14 = sdiv i32 %13, 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 2
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 14
  %19 = sdiv i32 %18, 12
  %20 = mul nsw i32 12, %19
  %21 = sub nsw i32 %16, %20
  %22 = mul nsw i32 367, %21
  %23 = sdiv i32 %22, 12
  %24 = add nsw i32 %14, %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 4900
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 14
  %29 = sdiv i32 %28, 12
  %30 = add nsw i32 %26, %29
  %31 = sdiv i32 %30, 100
  %32 = mul nsw i32 3, %31
  %33 = sdiv i32 %32, 4
  %34 = sub nsw i32 %24, %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = sub nsw i32 %36, 32075
  %38 = sext i32 %37 to i64
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
