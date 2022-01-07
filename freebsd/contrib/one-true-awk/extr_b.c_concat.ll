; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtok = common dso_local global i32 0, align 4
@CAT = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @concat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @rtok, align 4
  switch i32 %4, label %21 [
    i32 131, label %5
    i32 130, label %5
    i32 133, label %5
    i32 132, label %5
    i32 128, label %5
    i32 36, label %5
    i32 40, label %5
    i32 129, label %11
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* @CAT, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* (...) @primary()
  %9 = call i32* @op2(i32 %6, i32* %7, i32* %8)
  %10 = call i32* @concat(i32* %9)
  store i32* %10, i32** %2, align 8
  br label %23

11:                                               ; preds = %1
  %12 = call i32 (...) @relex()
  store i32 %12, i32* @rtok, align 4
  %13 = load i32, i32* @CAT, align 4
  %14 = load i32*, i32** @NIL, align 8
  %15 = call i64 @tostring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i32*
  %17 = call i32* @op2(i32 132, i32* %14, i32* %16)
  %18 = call i32* (...) @primary()
  %19 = call i32* @op2(i32 %13, i32* %17, i32* %18)
  %20 = call i32* @concat(i32* %19)
  store i32* %20, i32** %2, align 8
  br label %23

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  store i32* %22, i32** %2, align 8
  br label %23

23:                                               ; preds = %21, %11, %5
  %24 = load i32*, i32** %2, align 8
  ret i32* %24
}

declare dso_local i32* @op2(i32, i32*, i32*) #1

declare dso_local i32* @primary(...) #1

declare dso_local i32 @relex(...) #1

declare dso_local i64 @tostring(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
