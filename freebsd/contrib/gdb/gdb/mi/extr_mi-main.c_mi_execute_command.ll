; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_execute_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_execute_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.mi_parse = type { i8* }
%struct.captured_mi_execute_command_args = type { i64, %struct.mi_parse* }
%struct.cleanup = type { i32 }

@uiout = common dso_local global %struct.ui_out* null, align 8
@captured_mi_execute_command = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4
@EXECUTE_COMMAND_SUPRESS_PROMPT = common dso_local global i64 0, align 8
@EXECUTE_COMMAND_DISPLAY_ERROR = common dso_local global i64 0, align 8
@xfree = common dso_local global i32 0, align 4
@raw_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"^error,msg=\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"(gdb) \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mi_execute_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mi_parse*, align 8
  %6 = alloca %struct.captured_mi_execute_command_args, align 8
  %7 = alloca %struct.ui_out*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ui_out*, %struct.ui_out** @uiout, align 8
  store %struct.ui_out* %11, %struct.ui_out** %7, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @quit_force(i32* null, i32 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i8*, i8** %3, align 8
  %19 = call %struct.mi_parse* @mi_parse(i8* %18)
  store %struct.mi_parse* %19, %struct.mi_parse** %5, align 8
  %20 = load %struct.mi_parse*, %struct.mi_parse** %5, align 8
  %21 = icmp ne %struct.mi_parse* %20, null
  br i1 %21, label %22, label %64

22:                                               ; preds = %17
  %23 = load %struct.mi_parse*, %struct.mi_parse** %5, align 8
  %24 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %6, i32 0, i32 1
  store %struct.mi_parse* %23, %struct.mi_parse** %24, align 8
  %25 = load %struct.ui_out*, %struct.ui_out** @uiout, align 8
  %26 = load i32, i32* @captured_mi_execute_command, align 4
  %27 = load i32, i32* @RETURN_MASK_ALL, align 4
  %28 = call i32 @catch_exceptions(%struct.ui_out* %25, i32 %26, %struct.captured_mi_execute_command_args* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EXECUTE_COMMAND_SUPRESS_PROMPT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.mi_parse*, %struct.mi_parse** %5, align 8
  %35 = call i32 @mi_parse_free(%struct.mi_parse* %34)
  br label %69

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.captured_mi_execute_command_args, %struct.captured_mi_execute_command_args* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EXECUTE_COMMAND_DISPLAY_ERROR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %41, %36
  %45 = call i8* (...) @error_last_message()
  store i8* %45, i8** %9, align 8
  %46 = load i32, i32* @xfree, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call %struct.cleanup* @make_cleanup(i32 %46, i8* %47)
  store %struct.cleanup* %48, %struct.cleanup** %10, align 8
  %49 = load %struct.mi_parse*, %struct.mi_parse** %5, align 8
  %50 = getelementptr inbounds %struct.mi_parse, %struct.mi_parse* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @raw_stdout, align 4
  %53 = call i32 @fputs_unfiltered(i8* %51, i32 %52)
  %54 = load i32, i32* @raw_stdout, align 4
  %55 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* @raw_stdout, align 4
  %58 = call i32 @fputstr_unfiltered(i8* %56, i8 signext 34, i32 %57)
  %59 = load i32, i32* @raw_stdout, align 4
  %60 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %44, %41
  %62 = load %struct.mi_parse*, %struct.mi_parse** %5, align 8
  %63 = call i32 @mi_parse_free(%struct.mi_parse* %62)
  br label %64

64:                                               ; preds = %61, %17
  %65 = load i32, i32* @raw_stdout, align 4
  %66 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @raw_stdout, align 4
  %68 = call i32 @gdb_flush(i32 %67)
  br label %69

69:                                               ; preds = %64, %33
  ret void
}

declare dso_local i32 @quit_force(i32*, i32) #1

declare dso_local %struct.mi_parse* @mi_parse(i8*) #1

declare dso_local i32 @catch_exceptions(%struct.ui_out*, i32, %struct.captured_mi_execute_command_args*, i8*, i32) #1

declare dso_local i32 @mi_parse_free(%struct.mi_parse*) #1

declare dso_local i8* @error_last_message(...) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @fputstr_unfiltered(i8*, i8 signext, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
