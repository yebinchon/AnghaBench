; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mktime.c_normalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mktime.c_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normalize(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %13, %14
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, %15
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %21, %19
  store i32 %22, i32* %20, align 4
  br label %58

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %27
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 0, %40
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %41, %42
  %44 = add nsw i32 1, %43
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 0, %50
  %52 = load i32, i32* %6, align 4
  %53 = srem i32 %51, %52
  %54 = sub nsw i32 %48, %53
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %38, %27
  br label %57

57:                                               ; preds = %56, %23
  br label %58

58:                                               ; preds = %57, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
