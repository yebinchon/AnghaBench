; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_item_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_item_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32** }

@tw_item = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tw_item_find(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_item, i32 0, i32 1), align 8
  %6 = icmp eq i32** %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  store i32* null, i32** %2, align 8
  br label %40

11:                                               ; preds = %7
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %36, %11
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_item, i32 0, i32 0), align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_item, i32 0, i32 1), align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_item, i32 0, i32 1), align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @Strcmp(i32* %26, i32* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tw_item, i32 0, i32 1), align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %2, align 8
  br label %40

35:                                               ; preds = %22, %16
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  br label %12

39:                                               ; preds = %12
  store i32* null, i32** %2, align 8
  br label %40

40:                                               ; preds = %39, %30, %10
  %41 = load i32*, i32** %2, align 8
  ret i32* %41
}

declare dso_local i64 @Strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
