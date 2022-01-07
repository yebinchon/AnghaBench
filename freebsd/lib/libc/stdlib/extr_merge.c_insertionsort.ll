; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_merge.c_insertionsort.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_merge.c_insertionsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i32)* @insertionsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insertionsort(i32* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %9, align 8
  br label %18

18:                                               ; preds = %48, %4
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %6, align 8
  %21 = icmp uge i64 %20, 1
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  store i32* %23, i32** %11, align 8
  br label %24

24:                                               ; preds = %42, %22
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ugt i32* %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i32*, i32** %11, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i64 @CMP(i32* %33, i32* %34)
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %47

38:                                               ; preds = %28
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @swap(i32* %39, i32* %40)
  br label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = sub i64 0, %43
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %11, align 8
  br label %24

47:                                               ; preds = %37, %24
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %7, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 %49
  store i32* %51, i32** %9, align 8
  br label %18

52:                                               ; preds = %18
  ret void
}

declare dso_local i64 @CMP(i32*, i32*) #1

declare dso_local i32 @swap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
