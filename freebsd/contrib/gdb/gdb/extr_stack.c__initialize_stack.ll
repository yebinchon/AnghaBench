; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c__initialize_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c__initialize_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"return\00", align 1
@class_stack = common dso_local global i32 0, align 4
@return_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [236 x i8] c"Make selected stack frame return to its caller.\0AControl remains in the debugger, but when you continue\0Aexecution will resume in the frame above the one now selected.\0AIf an argument is given, it is an expression for the value to return.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@up_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [94 x i8] c"Select and print stack frame that called this one.\0AAn argument says how many frames up to go.\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"up-silently\00", align 1
@class_support = common dso_local global i32 0, align 4
@up_silently_command = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [90 x i8] c"Same as the `up' command, but does not print anything.\0AThis is useful in command scripts.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@down_command = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [94 x i8] c"Select and print stack frame called by this one.\0AAn argument says how many frames down to go.\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"dow\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"down-silently\00", align 1
@down_silently_command = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [92 x i8] c"Same as the `down' command, but does not print anything.\0AThis is useful in command scripts.\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@frame_command = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [311 x i8] c"Select and print a stack frame.\0AWith no argument, print the selected stack frame.  (See also \22info frame\22).\0AAn argument specifies the frame to select.\0AIt can be a stack frame number or the address of the frame.\0AWith argument, nothing is printed if input is coming from\0Aa command file or a user-defined command.\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@xdb_commands = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@current_frame_command = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"Print the current stack frame.\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"select-frame\00", align 1
@select_frame_command = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [152 x i8] c"Select a stack frame without printing anything.\0AAn argument specifies the frame to select.\0AIt can be a stack frame number or the address of the frame.\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"backtrace\00", align 1
@backtrace_command = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [197 x i8] c"Print backtrace of all stack frames, or innermost COUNT frames.\0AWith a negative argument, print outermost -COUNT frames.\0AUse of the 'full' qualifier also prints the values of the local variables.\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@backtrace_full_command = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [178 x i8] c"Print backtrace of all stack frames, or innermost COUNT frames \0Aand the values of the local variables.\0AWith a negative argument, print outermost -COUNT frames.\0AUsage: T <count>\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@class_alias = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"Backtrace of the stack, or innermost COUNT frames.\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@frame_info = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [50 x i8] c"All about selected stack frame, or frame at ADDR.\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"locals\00", align 1
@locals_info = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [40 x i8] c"Local variables of current stack frame.\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@args_info = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [43 x i8] c"Argument variables of current stack frame.\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@class_info = common dso_local global i32 0, align 4
@args_plus_locals_info = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [53 x i8] c"Argument and local variables of current stack frame.\00", align 1
@dbx_commands = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@func_command = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [65 x i8] c"Select the stack frame that contains <func>.\0AUsage: func <name>\0A\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@catch_info = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [58 x i8] c"Exceptions that can be caught in the current stack frame.\00", align 1
@backtrace_limit = common dso_local global i32 0, align 4
@backtrace_limit_info = common dso_local global i32 0, align 4
@set_backtrace_limit_command = common dso_local global i32 0, align 4
@setlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_stack() #0 {
  %1 = load i32, i32* @class_stack, align 4
  %2 = load i32, i32* @return_command, align 4
  %3 = call i32 @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @class_stack, align 4
  %5 = load i32, i32* @up_command, align 4
  %6 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %4, i32 %5, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.3, i64 0, i64 0))
  %7 = load i32, i32* @class_support, align 4
  %8 = load i32, i32* @up_silently_command, align 4
  %9 = call i32 @add_com(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %7, i32 %8, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0))
  %10 = load i32, i32* @class_stack, align 4
  %11 = load i32, i32* @down_command, align 4
  %12 = call i32 @add_com(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %10, i32 %11, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.7, i64 0, i64 0))
  %13 = load i32, i32* @class_stack, align 4
  %14 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %13, i32 1)
  %15 = load i32, i32* @class_stack, align 4
  %16 = call i32 @add_com_alias(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %15, i32 1)
  %17 = load i32, i32* @class_support, align 4
  %18 = load i32, i32* @down_silently_command, align 4
  %19 = call i32 @add_com(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %17, i32 %18, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.11, i64 0, i64 0))
  %20 = load i32, i32* @class_stack, align 4
  %21 = load i32, i32* @frame_command, align 4
  %22 = call i32 @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %20, i32 %21, i8* getelementptr inbounds ([311 x i8], [311 x i8]* @.str.13, i64 0, i64 0))
  %23 = load i32, i32* @class_stack, align 4
  %24 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %23, i32 1)
  %25 = load i64, i64* @xdb_commands, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %0
  %28 = load i32, i32* @class_stack, align 4
  %29 = load i32, i32* @current_frame_command, align 4
  %30 = call i32 @add_com(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 %28, i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  %31 = load i32, i32* @class_stack, align 4
  %32 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %31, i32 1)
  br label %33

33:                                               ; preds = %27, %0
  %34 = load i32, i32* @class_stack, align 4
  %35 = load i32, i32* @select_frame_command, align 4
  %36 = call i32 @add_com(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 %34, i32 %35, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.19, i64 0, i64 0))
  %37 = load i32, i32* @class_stack, align 4
  %38 = load i32, i32* @backtrace_command, align 4
  %39 = call i32 @add_com(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 %37, i32 %38, i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.21, i64 0, i64 0))
  %40 = load i32, i32* @class_stack, align 4
  %41 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 %40, i32 0)
  %42 = load i64, i64* @xdb_commands, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load i32, i32* @class_stack, align 4
  %46 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 %45, i32 0)
  %47 = load i32, i32* @class_stack, align 4
  %48 = load i32, i32* @backtrace_full_command, align 4
  %49 = call i32 @add_com(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 %47, i32 %48, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.25, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %33
  %51 = load i32, i32* @class_alias, align 4
  %52 = call i32 @add_com_alias(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 %51, i32 0)
  %53 = load i32, i32* @backtrace_command, align 4
  %54 = call i32 @add_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 %53, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0))
  %55 = call i32 @add_info_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 1)
  %56 = load i32, i32* @frame_info, align 4
  %57 = call i32 @add_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i64 0, i64 0))
  %58 = call i32 @add_info_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %59 = load i32, i32* @locals_info, align 4
  %60 = call i32 @add_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0))
  %61 = load i32, i32* @args_info, align 4
  %62 = call i32 @add_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i64 0, i64 0))
  %63 = load i64, i64* @xdb_commands, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = load i32, i32* @class_info, align 4
  %67 = load i32, i32* @args_plus_locals_info, align 4
  %68 = call i32 @add_com(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i32 %66, i32 %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %50
  %70 = load i64, i64* @dbx_commands, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @class_stack, align 4
  %74 = load i32, i32* @func_command, align 4
  %75 = call i32 @add_com(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %73, i32 %74, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.38, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32, i32* @catch_info, align 4
  %78 = call i32 @add_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 %77, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.40, i64 0, i64 0))
  ret void
}

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @add_com_alias(i8*, i8*, i32, i32) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local i32 @add_info_alias(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
