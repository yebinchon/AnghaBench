; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_block_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_block_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i32, %struct.mdoc_arg* }
%struct.roff_man = type { i32 }
%struct.mdoc_arg = type { i32 }

@ROFFT_BLOCK = common dso_local global i32 0, align 4
@ROFF_NEXT_CHILD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.roff_node* @mdoc_block_alloc(%struct.roff_man* %0, i32 %1, i32 %2, i32 %3, %struct.mdoc_arg* %4) #0 {
  %6 = alloca %struct.roff_man*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mdoc_arg*, align 8
  %11 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mdoc_arg* %4, %struct.mdoc_arg** %10, align 8
  %12 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @ROFFT_BLOCK, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.roff_node* @roff_node_alloc(%struct.roff_man* %12, i32 %13, i32 %14, i32 %15, i32 %16)
  store %struct.roff_node* %17, %struct.roff_node** %11, align 8
  %18 = load %struct.mdoc_arg*, %struct.mdoc_arg** %10, align 8
  %19 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %20 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %19, i32 0, i32 1
  store %struct.mdoc_arg* %18, %struct.mdoc_arg** %20, align 8
  %21 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %22 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %21, i32 0, i32 1
  %23 = load %struct.mdoc_arg*, %struct.mdoc_arg** %22, align 8
  %24 = icmp ne %struct.mdoc_arg* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load %struct.mdoc_arg*, %struct.mdoc_arg** %10, align 8
  %27 = getelementptr inbounds %struct.mdoc_arg, %struct.mdoc_arg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %5
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %36 [
    i32 132, label %32
    i32 131, label %32
    i32 130, label %32
    i32 129, label %32
    i32 128, label %32
  ]

32:                                               ; preds = %30, %30, %30, %30, %30
  %33 = call i32 @mandoc_calloc(i32 1, i32 4)
  %34 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %35 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %32
  %38 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %39 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %40 = call i32 @roff_node_append(%struct.roff_man* %38, %struct.roff_node* %39)
  %41 = load i32, i32* @ROFF_NEXT_CHILD, align 4
  %42 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %43 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  ret %struct.roff_node* %44
}

declare dso_local %struct.roff_node* @roff_node_alloc(%struct.roff_man*, i32, i32, i32, i32) #1

declare dso_local i32 @mandoc_calloc(i32, i32) #1

declare dso_local i32 @roff_node_append(%struct.roff_man*, %struct.roff_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
