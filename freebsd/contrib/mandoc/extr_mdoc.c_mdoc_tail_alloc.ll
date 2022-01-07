; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_tail_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_tail_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32 }
%struct.roff_node = type { i32 }

@ROFFT_TAIL = common dso_local global i32 0, align 4
@ROFF_NEXT_CHILD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdoc_tail_alloc(%struct.roff_man* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.roff_man*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ROFFT_TAIL, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.roff_node* @roff_node_alloc(%struct.roff_man* %10, i32 %11, i32 %12, i32 %13, i32 %14)
  store %struct.roff_node* %15, %struct.roff_node** %9, align 8
  %16 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %17 = load %struct.roff_node*, %struct.roff_node** %9, align 8
  %18 = call i32 @roff_node_append(%struct.roff_man* %16, %struct.roff_node* %17)
  %19 = load i32, i32* @ROFF_NEXT_CHILD, align 4
  %20 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %21 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local %struct.roff_node* @roff_node_alloc(%struct.roff_man*, i32, i32, i32, i32) #1

declare dso_local i32 @roff_node_append(%struct.roff_man*, %struct.roff_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
