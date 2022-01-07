; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_follow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_follow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @follow(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @type(i32* %4)
  %6 = load i32, i32* @FINAL, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @parent(i32* %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @type(i32* %12)
  switch i32 %13, label %36 [
    i32 128, label %14
    i32 130, label %14
    i32 131, label %18
    i32 129, label %18
    i32 132, label %20
  ]

14:                                               ; preds = %9, %9
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @first(i32* %15)
  %17 = load i32*, i32** %3, align 8
  call void @follow(i32* %17)
  br label %36

18:                                               ; preds = %9, %9
  %19 = load i32*, i32** %3, align 8
  call void @follow(i32* %19)
  br label %36

20:                                               ; preds = %9
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @left(i32* %22)
  %24 = icmp eq i32* %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @right(i32* %26)
  %28 = call i32 @first(i32* %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  call void @follow(i32* %31)
  br label %36

32:                                               ; preds = %25
  br label %35

33:                                               ; preds = %20
  %34 = load i32*, i32** %3, align 8
  call void @follow(i32* %34)
  br label %35

35:                                               ; preds = %33, %32
  br label %36

36:                                               ; preds = %8, %14, %18, %30, %35, %9
  ret void
}

declare dso_local i32 @type(i32*) #1

declare dso_local i32* @parent(i32*) #1

declare dso_local i32 @first(i32*) #1

declare dso_local i32* @left(i32*) #1

declare dso_local i32* @right(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
