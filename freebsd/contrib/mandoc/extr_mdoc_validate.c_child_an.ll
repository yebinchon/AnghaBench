; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_child_an.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_child_an.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i64, %struct.roff_node*, %struct.roff_node* }

@MDOC_An = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_node*)* @child_an to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_an(%struct.roff_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %3, align 8
  %4 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %5 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %4, i32 0, i32 1
  %6 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  store %struct.roff_node* %6, %struct.roff_node** %3, align 8
  br label %7

7:                                                ; preds = %27, %1
  %8 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %9 = icmp ne %struct.roff_node* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %12 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MDOC_An, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %18 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %17, i32 0, i32 1
  %19 = load %struct.roff_node*, %struct.roff_node** %18, align 8
  %20 = icmp ne %struct.roff_node* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16, %10
  %22 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %23 = call i32 @child_an(%struct.roff_node* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %16
  store i32 1, i32* %2, align 4
  br label %32

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 2
  %30 = load %struct.roff_node*, %struct.roff_node** %29, align 8
  store %struct.roff_node* %30, %struct.roff_node** %3, align 8
  br label %7

31:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
