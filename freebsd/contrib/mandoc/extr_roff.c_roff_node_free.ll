; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_node_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_node_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i64, %struct.roff_node*, i32, %struct.roff_node*, i32* }

@ROFFT_BLOCK = common dso_local global i64 0, align 8
@ROFFT_ELEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roff_node_free(%struct.roff_node* %0) #0 {
  %2 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %2, align 8
  %3 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %4 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %9 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @mdoc_argv_free(i32* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ROFFT_BLOCK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %20 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ROFFT_ELEM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18, %12
  %25 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %26 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %25, i32 0, i32 3
  %27 = load %struct.roff_node*, %struct.roff_node** %26, align 8
  %28 = call i32 @free(%struct.roff_node* %27)
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %31 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @eqn_box_free(i32 %32)
  %34 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %35 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %34, i32 0, i32 1
  %36 = load %struct.roff_node*, %struct.roff_node** %35, align 8
  %37 = call i32 @free(%struct.roff_node* %36)
  %38 = load %struct.roff_node*, %struct.roff_node** %2, align 8
  %39 = call i32 @free(%struct.roff_node* %38)
  ret void
}

declare dso_local i32 @mdoc_argv_free(i32*) #1

declare dso_local i32 @free(%struct.roff_node*) #1

declare dso_local i32 @eqn_box_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
