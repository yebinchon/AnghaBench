; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_find_relative_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_find_relative_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_info* @find_relative_frame(%struct.frame_info* %0, i32* %1) #0 {
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.frame_info*, align 8
  %6 = alloca %struct.frame_info*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %7

7:                                                ; preds = %17, %2
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %13 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %12)
  store %struct.frame_info* %13, %struct.frame_info** %5, align 8
  %14 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %15 = icmp eq %struct.frame_info* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %22

17:                                               ; preds = %11
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  store %struct.frame_info* %21, %struct.frame_info** %3, align 8
  br label %7

22:                                               ; preds = %16, %7
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %37, %26
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %33 = call %struct.frame_info* @get_next_frame(%struct.frame_info* %32)
  store %struct.frame_info* %33, %struct.frame_info** %6, align 8
  %34 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %35 = icmp ne %struct.frame_info* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %42

37:                                               ; preds = %31
  %38 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  store %struct.frame_info* %38, %struct.frame_info** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %27

42:                                               ; preds = %36, %27
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  ret %struct.frame_info* %44
}

declare dso_local %struct.frame_info* @get_prev_frame(%struct.frame_info*) #1

declare dso_local %struct.frame_info* @get_next_frame(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
