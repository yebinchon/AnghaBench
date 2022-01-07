; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_unary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtok = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @unary(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @rtok, align 4
  switch i32 %4, label %23 [
    i32 128, label %5
    i32 130, label %11
    i32 129, label %17
  ]

5:                                                ; preds = %1
  %6 = call i32 (...) @relex()
  store i32 %6, i32* @rtok, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @NIL, align 4
  %9 = call i32* @op2(i32 128, i32* %7, i32 %8)
  %10 = call i32* @unary(i32* %9)
  store i32* %10, i32** %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = call i32 (...) @relex()
  store i32 %12, i32* @rtok, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @NIL, align 4
  %15 = call i32* @op2(i32 130, i32* %13, i32 %14)
  %16 = call i32* @unary(i32* %15)
  store i32* %16, i32** %2, align 8
  br label %25

17:                                               ; preds = %1
  %18 = call i32 (...) @relex()
  store i32 %18, i32* @rtok, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @NIL, align 4
  %21 = call i32* @op2(i32 129, i32* %19, i32 %20)
  %22 = call i32* @unary(i32* %21)
  store i32* %22, i32** %2, align 8
  br label %25

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  store i32* %24, i32** %2, align 8
  br label %25

25:                                               ; preds = %23, %17, %11, %5
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

declare dso_local i32 @relex(...) #1

declare dso_local i32* @op2(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
