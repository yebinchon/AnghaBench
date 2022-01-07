; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-stack.c_mi_cmd_stack_list_frames.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-stack.c_mi_cmd_stack_list_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }
%struct.frame_info = type { i32 }

@target_has_stack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mi_cmd_stack_list_frames: No stack.\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"mi_cmd_stack_list_frames: Usage: [FRAME_LOW FRAME_HIGH]\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"mi_cmd_stack_list_frames: Not enough frames in stack.\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@QUIT = common dso_local global i32 0, align 4
@LOC_AND_ADDRESS = common dso_local global i32 0, align 4
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_stack_list_frames(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cleanup*, align 8
  %11 = alloca %struct.frame_info*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @target_has_stack, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16
  %23 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @atoi(i8* %34)
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %27
  store i32 0, i32* %9, align 4
  %38 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %38, %struct.frame_info** %11, align 8
  br label %39

39:                                               ; preds = %49, %37
  %40 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %41 = icmp ne %struct.frame_info* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ false, %39 ], [ %45, %42 ]
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %53 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %52)
  store %struct.frame_info* %53, %struct.frame_info** %11, align 8
  br label %39

54:                                               ; preds = %46
  %55 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %56 = icmp eq %struct.frame_info* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* @uiout, align 4
  %61 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cleanup* %61, %struct.cleanup** %10, align 8
  br label %62

62:                                               ; preds = %82, %59
  %63 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %64 = icmp ne %struct.frame_info* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, -1
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i1 [ true, %65 ], [ %71, %69 ]
  br label %74

74:                                               ; preds = %72, %62
  %75 = phi i1 [ false, %62 ], [ %73, %72 ]
  br i1 %75, label %76, label %87

76:                                               ; preds = %74
  %77 = load i32, i32* @QUIT, align 4
  %78 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @LOC_AND_ADDRESS, align 4
  %81 = call i32 @print_frame_info(%struct.frame_info* %78, i32 %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  %85 = load %struct.frame_info*, %struct.frame_info** %11, align 8
  %86 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %85)
  store %struct.frame_info* %86, %struct.frame_info** %11, align 8
  br label %62

87:                                               ; preds = %74
  %88 = load %struct.cleanup*, %struct.cleanup** %10, align 8
  %89 = call i32 @do_cleanups(%struct.cleanup* %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %87
  %96 = load i32, i32* @MI_CMD_DONE, align 4
  ret i32 %96
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local %struct.frame_info* @get_prev_frame(%struct.frame_info*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32, i8*) #1

declare dso_local i32 @print_frame_info(%struct.frame_info*, i32, i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
