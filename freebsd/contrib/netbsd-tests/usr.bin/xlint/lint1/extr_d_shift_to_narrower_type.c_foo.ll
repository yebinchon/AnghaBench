; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/usr.bin/xlint/lint1/extr_d_shift_to_narrower_type.c_foo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/usr.bin/xlint/lint1/extr_d_shift_to_narrower_type.c_foo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  store i64 100, i64* %1, align 8
  store i64 100, i64* %2, align 8
  store i32 100, i32* %3, align 4
  store i16 100, i16* %4, align 2
  store i8 1, i8* %5, align 1
  %6 = load i64, i64* %2, align 8
  %7 = lshr i64 %6, 32
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %2, align 8
  %9 = lshr i64 %8, 32
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i64, i64* %2, align 8
  %12 = lshr i64 %11, 48
  %13 = trunc i64 %12 to i16
  store i16 %13, i16* %4, align 2
  %14 = load i64, i64* %2, align 8
  %15 = lshr i64 %14, 56
  %16 = trunc i64 %15 to i8
  store i8 %16, i8* %5, align 1
  %17 = load i32, i32* %3, align 4
  %18 = lshr i32 %17, 16
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %4, align 2
  %20 = load i32, i32* %3, align 4
  %21 = lshr i32 %20, 24
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = load i16, i16* %4, align 2
  %24 = zext i16 %23 to i32
  %25 = ashr i32 %24, 8
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %5, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
