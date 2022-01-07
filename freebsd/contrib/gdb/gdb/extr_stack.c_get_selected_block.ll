; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_get_selected_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_get_selected_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@target_has_stack = common dso_local global i32 0, align 4
@deprecated_selected_frame = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @get_selected_block(i32* %0) #0 {
  %2 = alloca %struct.block*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @target_has_stack, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.block* null, %struct.block** %2, align 8
  br label %25

8:                                                ; preds = %1
  %9 = load i32, i32* @deprecated_selected_frame, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = call i32 (...) @read_pc()
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %3, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.block* @block_for_pc(i32 %19)
  store %struct.block* %20, %struct.block** %2, align 8
  br label %25

21:                                               ; preds = %8
  %22 = load i32, i32* @deprecated_selected_frame, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.block* @get_frame_block(i32 %22, i32* %23)
  store %struct.block* %24, %struct.block** %2, align 8
  br label %25

25:                                               ; preds = %21, %18, %7
  %26 = load %struct.block*, %struct.block** %2, align 8
  ret %struct.block* %26
}

declare dso_local i32 @read_pc(...) #1

declare dso_local %struct.block* @block_for_pc(i32) #1

declare dso_local %struct.block* @get_frame_block(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
