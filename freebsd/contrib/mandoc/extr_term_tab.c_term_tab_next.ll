; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_tab.c_term_tab_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_tab.c_term_tab_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, i64* }
%struct.TYPE_4__ = type { i64, i64* }

@tabs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @term_tab_next(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %71, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 0), align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %58

10:                                               ; preds = %6
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 1, i32 0), align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  store i64 %14, i64* %2, align 8
  br label %74

15:                                               ; preds = %10
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 1, i32 0), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 0), align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 0), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 1), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 0), align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 0), align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 1), align 8
  %24 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 2), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 1), align 8
  %26 = call i64* @mandoc_reallocarray(i64* %24, i64 %25, i32 8)
  store i64* %26, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 2), align 8
  br label %27

27:                                               ; preds = %22, %15
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 1, i32 0), align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 1, i32 1), align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 2), align 8
  %41 = load i64, i64* %4, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  br label %46

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i64 [ %44, %39 ], [ 0, %45 ]
  %48 = add i64 %36, %47
  %49 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 2), align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %50, %51
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  store i64 %48, i64* %53, align 8
  br label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %5, align 8
  br label %28

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %57, %6
  %59 = load i64, i64* %3, align 8
  %60 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 2), align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tabs, i32 0, i32 0, i32 2), align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %2, align 8
  br label %74

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %4, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %4, align 8
  br label %6

74:                                               ; preds = %65, %13
  %75 = load i64, i64* %2, align 8
  ret i64 %75
}

declare dso_local i64* @mandoc_reallocarray(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
