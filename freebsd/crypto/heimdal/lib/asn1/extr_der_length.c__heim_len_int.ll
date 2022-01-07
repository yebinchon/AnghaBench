; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_length.c__heim_len_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_length.c__heim_len_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_heim_len_int(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* %2, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %16, %7
  %9 = load i32, i32* %2, align 4
  %10 = srem i32 %9, 256
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %3, align 1
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sdiv i32 %14, 256
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %8, label %19

19:                                               ; preds = %16
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp sge i32 %21, 128
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %23, %19
  br label %50

27:                                               ; preds = %1
  %28 = load i32, i32* %2, align 4
  %29 = xor i32 %28, -1
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %39, %27
  %31 = load i32, i32* %2, align 4
  %32 = srem i32 %31, 256
  %33 = xor i32 %32, -1
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %3, align 1
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sdiv i32 %37, 256
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %30, label %42

42:                                               ; preds = %39
  %43 = load i8, i8* %3, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %44, 128
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
