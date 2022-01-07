; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-stack.c_mi_cmd_stack_list_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-stack.c_mi_cmd_stack_list_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"mi_cmd_stack_list_args: Usage: PRINT_VALUES [FRAME_LOW FRAME_HIGH]\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"mi_cmd_stack_list_args: Not enough frames in stack.\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"stack-args\00", align 1
@QUIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_stack_list_args(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.frame_info*, align 8
  %11 = alloca %struct.cleanup*, align 8
  %12 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 3
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15, %3
  %22 = call i32 @error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoi(i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @atoi(i8* %33)
  store i32 %34, i32* %8, align 4
  br label %36

35:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %26
  store i32 0, i32* %9, align 4
  %37 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %37, %struct.frame_info** %10, align 8
  br label %38

38:                                               ; preds = %48, %36
  %39 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %40 = icmp ne %struct.frame_info* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %52 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %51)
  store %struct.frame_info* %52, %struct.frame_info** %10, align 8
  br label %38

53:                                               ; preds = %45
  %54 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %55 = icmp eq %struct.frame_info* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* @uiout, align 4
  %60 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cleanup* %60, %struct.cleanup** %11, align 8
  br label %61

61:                                               ; preds = %90, %58
  %62 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %63 = icmp ne %struct.frame_info* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, -1
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i1 [ true, %64 ], [ %70, %68 ]
  br label %73

73:                                               ; preds = %71, %61
  %74 = phi i1 [ false, %61 ], [ %72, %71 ]
  br i1 %74, label %75, label %95

75:                                               ; preds = %73
  %76 = load i32, i32* @QUIT, align 4
  %77 = load i32, i32* @uiout, align 4
  %78 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cleanup* %78, %struct.cleanup** %12, align 8
  %79 = load i32, i32* @uiout, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ui_out_field_int(i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @atoi(i8* %84)
  %86 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %87 = call i32 @list_args_or_locals(i32 0, i32 %85, %struct.frame_info* %86)
  %88 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %89 = call i32 @do_cleanups(%struct.cleanup* %88)
  br label %90

90:                                               ; preds = %75
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %94 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %93)
  store %struct.frame_info* %94, %struct.frame_info** %10, align 8
  br label %61

95:                                               ; preds = %73
  %96 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %97 = call i32 @do_cleanups(%struct.cleanup* %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %95
  %104 = load i32, i32* @MI_CMD_DONE, align 4
  ret i32 %104
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local %struct.frame_info* @get_prev_frame(%struct.frame_info*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32, i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i8*) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i32 @list_args_or_locals(i32, i32, %struct.frame_info*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
