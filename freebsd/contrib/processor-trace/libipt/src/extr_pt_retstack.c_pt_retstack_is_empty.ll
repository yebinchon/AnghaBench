; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_retstack.c_pt_retstack_is_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_retstack.c_pt_retstack_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_retstack = type { i64, i64 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_retstack_is_empty(%struct.pt_retstack* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_retstack*, align 8
  store %struct.pt_retstack* %0, %struct.pt_retstack** %3, align 8
  %4 = load %struct.pt_retstack*, %struct.pt_retstack** %3, align 8
  %5 = icmp ne %struct.pt_retstack* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @pte_invalid, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.pt_retstack*, %struct.pt_retstack** %3, align 8
  %11 = getelementptr inbounds %struct.pt_retstack, %struct.pt_retstack* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pt_retstack*, %struct.pt_retstack** %3, align 8
  %14 = getelementptr inbounds %struct.pt_retstack, %struct.pt_retstack* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %9, %6
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
