; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_value1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_value1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { i32** }

@STRNULL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @value1(i32* %0, %struct.varent* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.varent*, align 8
  %6 = alloca %struct.varent*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.varent* %1, %struct.varent** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.varent*, %struct.varent** %5, align 8
  %11 = icmp ne %struct.varent* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %2
  %13 = load i32*, i32** @STRNULL, align 8
  store i32* %13, i32** %3, align 8
  br label %42

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.varent*, %struct.varent** %5, align 8
  %17 = call %struct.varent* @adrof1(i32* %15, %struct.varent* %16)
  store %struct.varent* %17, %struct.varent** %6, align 8
  %18 = load %struct.varent*, %struct.varent** %6, align 8
  %19 = icmp eq %struct.varent* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load %struct.varent*, %struct.varent** %6, align 8
  %22 = getelementptr inbounds %struct.varent, %struct.varent* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = icmp eq i32** %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.varent*, %struct.varent** %6, align 8
  %27 = getelementptr inbounds %struct.varent, %struct.varent* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25, %20, %14
  %33 = load i32*, i32** @STRNULL, align 8
  br label %40

34:                                               ; preds = %25
  %35 = load %struct.varent*, %struct.varent** %6, align 8
  %36 = getelementptr inbounds %struct.varent, %struct.varent* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  br label %40

40:                                               ; preds = %34, %32
  %41 = phi i32* [ %33, %32 ], [ %39, %34 ]
  store i32* %41, i32** %3, align 8
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local %struct.varent* @adrof1(i32*, %struct.varent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
