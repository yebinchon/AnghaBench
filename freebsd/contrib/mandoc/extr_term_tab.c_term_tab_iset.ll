; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_tab.c_term_tab_iset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_tab.c_term_tab_iset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64* }

@tabs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @term_tab_iset(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tabs, i32 0, i32 0, i32 0), align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tabs, i32 0, i32 0, i32 1), align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tabs, i32 0, i32 0, i32 1), align 8
  %8 = add nsw i64 %7, 8
  store i64 %8, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tabs, i32 0, i32 0, i32 1), align 8
  %9 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tabs, i32 0, i32 0, i32 2), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tabs, i32 0, i32 0, i32 1), align 8
  %11 = call i64* @mandoc_reallocarray(i64* %9, i64 %10, i32 8)
  store i64* %11, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tabs, i32 0, i32 0, i32 2), align 8
  br label %12

12:                                               ; preds = %6, %1
  %13 = load i64, i64* %2, align 8
  %14 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tabs, i32 0, i32 0, i32 2), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tabs, i32 0, i32 0, i32 0), align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tabs, i32 0, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 %13, i64* %17, align 8
  ret void
}

declare dso_local i64* @mandoc_reallocarray(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
