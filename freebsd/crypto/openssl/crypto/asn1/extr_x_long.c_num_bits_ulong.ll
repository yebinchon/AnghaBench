; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_x_long.c_num_bits_ulong.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_x_long.c_num_bits_ulong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @num_bits_ulong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_bits_ulong(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i64, i64* %3, align 8
  %7 = icmp ult i64 %6, 64
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i64, i64* %2, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, %12
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %2, align 8
  %16 = lshr i64 %15, 1
  store i64 %16, i64* %2, align 8
  br label %17

17:                                               ; preds = %8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  br label %5

20:                                               ; preds = %5
  %21 = load i64, i64* %4, align 8
  %22 = trunc i64 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
