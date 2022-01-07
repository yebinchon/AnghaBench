; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_endbody_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_endbody_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32 }
%struct.roff_node = type { i32, i32, %struct.roff_node*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NODE_ENDED = common dso_local global i32 0, align 4
@ROFFT_BODY = common dso_local global i32 0, align 4
@ENDBODY_SPACE = common dso_local global i32 0, align 4
@ROFF_NEXT_SIBLING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.roff_node* @mdoc_endbody_alloc(%struct.roff_man* %0, i32 %1, i32 %2, i32 %3, %struct.roff_node* %4) #0 {
  %6 = alloca %struct.roff_man*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.roff_node*, align 8
  %11 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.roff_node* %4, %struct.roff_node** %10, align 8
  %12 = load i32, i32* @NODE_ENDED, align 4
  %13 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @NODE_ENDED, align 4
  %18 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %19 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %17
  store i32 %23, i32* %21, align 4
  %24 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ROFFT_BODY, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.roff_node* @roff_node_alloc(%struct.roff_man* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store %struct.roff_node* %29, %struct.roff_node** %11, align 8
  %30 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %31 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %32 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %31, i32 0, i32 2
  store %struct.roff_node* %30, %struct.roff_node** %32, align 8
  %33 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %34 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %37 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ENDBODY_SPACE, align 4
  %39 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %40 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %42 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %43 = call i32 @roff_node_append(%struct.roff_man* %41, %struct.roff_node* %42)
  %44 = load i32, i32* @ROFF_NEXT_SIBLING, align 4
  %45 = load %struct.roff_man*, %struct.roff_man** %6, align 8
  %46 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  ret %struct.roff_node* %47
}

declare dso_local %struct.roff_node* @roff_node_alloc(%struct.roff_man*, i32, i32, i32, i32) #1

declare dso_local i32 @roff_node_append(%struct.roff_man*, %struct.roff_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
