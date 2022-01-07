; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl.c_tbl_span.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl.c_tbl_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_span = type { %struct.tbl_span* }
%struct.tbl_node = type { %struct.tbl_span*, %struct.tbl_span* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tbl_span* @tbl_span(%struct.tbl_node* %0) #0 {
  %2 = alloca %struct.tbl_node*, align 8
  %3 = alloca %struct.tbl_span*, align 8
  store %struct.tbl_node* %0, %struct.tbl_node** %2, align 8
  %4 = load %struct.tbl_node*, %struct.tbl_node** %2, align 8
  %5 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %4, i32 0, i32 0
  %6 = load %struct.tbl_span*, %struct.tbl_span** %5, align 8
  %7 = icmp ne %struct.tbl_span* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.tbl_node*, %struct.tbl_node** %2, align 8
  %10 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %9, i32 0, i32 0
  %11 = load %struct.tbl_span*, %struct.tbl_span** %10, align 8
  %12 = getelementptr inbounds %struct.tbl_span, %struct.tbl_span* %11, i32 0, i32 0
  %13 = load %struct.tbl_span*, %struct.tbl_span** %12, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.tbl_node*, %struct.tbl_node** %2, align 8
  %16 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %15, i32 0, i32 1
  %17 = load %struct.tbl_span*, %struct.tbl_span** %16, align 8
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi %struct.tbl_span* [ %13, %8 ], [ %17, %14 ]
  store %struct.tbl_span* %19, %struct.tbl_span** %3, align 8
  %20 = load %struct.tbl_span*, %struct.tbl_span** %3, align 8
  %21 = icmp ne %struct.tbl_span* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.tbl_span*, %struct.tbl_span** %3, align 8
  %24 = load %struct.tbl_node*, %struct.tbl_node** %2, align 8
  %25 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %24, i32 0, i32 0
  store %struct.tbl_span* %23, %struct.tbl_span** %25, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.tbl_span*, %struct.tbl_span** %3, align 8
  ret %struct.tbl_span* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
