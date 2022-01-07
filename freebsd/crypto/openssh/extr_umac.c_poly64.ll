; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_poly64.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_poly64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @poly64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poly64(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 32
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @MUL64(i32 %22, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @MUL64(i32 %25, i32 %26)
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %13, align 4
  %31 = ashr i32 %30, 32
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @MUL64(i32 %32, i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %34, %35
  %37 = mul nsw i32 %36, 59
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @MUL64(i32 %38, i32 %39)
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %42, 32
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %3
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 59
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %50, %3
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 59
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load i32, i32* %15, align 4
  ret i32 %64
}

declare dso_local i32 @MUL64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
