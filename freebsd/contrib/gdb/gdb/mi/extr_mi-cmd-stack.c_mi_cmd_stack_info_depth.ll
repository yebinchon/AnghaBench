; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-stack.c_mi_cmd_stack_info_depth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-stack.c_mi_cmd_stack_info_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@target_has_stack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mi_cmd_stack_info_depth: No stack.\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"mi_cmd_stack_info_depth: Usage: [MAX_DEPTH]\00", align 1
@QUIT = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_stack_info_depth(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.frame_info*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @target_has_stack, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @atoi(i8* %25)
  store i32 %26, i32* %7, align 4
  br label %28

27:                                               ; preds = %19
  store i32 -1, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %22
  store i32 0, i32* %8, align 4
  %29 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %29, %struct.frame_info** %9, align 8
  br label %30

30:                                               ; preds = %46, %28
  %31 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %32 = icmp ne %struct.frame_info* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, -1
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i1 [ true, %33 ], [ %39, %37 ]
  br label %42

42:                                               ; preds = %40, %30
  %43 = phi i1 [ false, %30 ], [ %41, %40 ]
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  %45 = load i32, i32* @QUIT, align 4
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %50 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %49)
  store %struct.frame_info* %50, %struct.frame_info** %9, align 8
  br label %30

51:                                               ; preds = %42
  %52 = load i32, i32* @uiout, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ui_out_field_int(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @MI_CMD_DONE, align 4
  ret i32 %55
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local %struct.frame_info* @get_prev_frame(%struct.frame_info*) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
