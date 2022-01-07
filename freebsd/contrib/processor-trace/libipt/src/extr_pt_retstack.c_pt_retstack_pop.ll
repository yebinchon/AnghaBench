; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_retstack.c_pt_retstack_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_retstack.c_pt_retstack_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_retstack = type { i32, i32, i32* }

@pte_invalid = common dso_local global i32 0, align 4
@pte_retstack_empty = common dso_local global i32 0, align 4
@pt_retstack_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_retstack_pop(%struct.pt_retstack* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_retstack*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_retstack* %0, %struct.pt_retstack** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.pt_retstack*, %struct.pt_retstack** %4, align 8
  %8 = icmp ne %struct.pt_retstack* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @pte_invalid, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = load %struct.pt_retstack*, %struct.pt_retstack** %4, align 8
  %14 = getelementptr inbounds %struct.pt_retstack, %struct.pt_retstack* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.pt_retstack*, %struct.pt_retstack** %4, align 8
  %18 = getelementptr inbounds %struct.pt_retstack, %struct.pt_retstack* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @pte_retstack_empty, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %12
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @pt_retstack_size, align 4
  br label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %28, %27 ], [ %31, %29 ]
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.pt_retstack*, %struct.pt_retstack** %4, align 8
  %36 = getelementptr inbounds %struct.pt_retstack, %struct.pt_retstack* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.pt_retstack*, %struct.pt_retstack** %4, align 8
  %41 = getelementptr inbounds %struct.pt_retstack, %struct.pt_retstack* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %32
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %21, %9
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
