; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-interp.c_mi_cmd_interpreter_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-interp.c_mi_cmd_interpreter_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interp = type { i32 }
%struct.interp_procs = type { i32 }

@MI_CMD_DONE = common dso_local global i32 0, align 4
@mi_error_message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"mi_cmd_interpreter_exec: Usage: -interpreter-exec interp command\00", align 1
@MI_CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"mi_cmd_interpreter_exec: could not find interpreter \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"mi_cmd_interpreter_exec: interpreter \22%s\22 does not support command execution\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@sync_execution = common dso_local global i32 0, align 4
@ALL_CLEANUPS = common dso_local global i32 0, align 4
@target_executing = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"^running\0A\00", align 1
@raw_stdout = common dso_local global i32 0, align 4
@mi_interpreter_exec_continuation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_interpreter_exec(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.interp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.interp_procs*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = call i32 (i32*, i8*, ...) @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %19, i32* %4, align 4
  br label %119

20:                                               ; preds = %3
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call %struct.interp* @interp_lookup(i8* %23)
  store %struct.interp* %24, %struct.interp** %8, align 8
  %25 = load %struct.interp*, %struct.interp** %8, align 8
  %26 = icmp eq %struct.interp* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i32*, i8*, ...) @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %32, i32* %4, align 4
  br label %119

33:                                               ; preds = %20
  %34 = load %struct.interp*, %struct.interp** %8, align 8
  %35 = call i32 @interp_exec_p(%struct.interp* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i8**, i8*** %6, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32*, i8*, ...) @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %42, i32* %4, align 4
  br label %119

43:                                               ; preds = %33
  %44 = call i32 (...) @mi_insert_notify_hooks()
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %102, %43
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %105

49:                                               ; preds = %45
  store i8* null, i8** %12, align 8
  %50 = call i64 (...) @target_can_async_p()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %49
  %53 = load i8**, i8*** %6, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %52
  %59 = load i8**, i8*** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strlen(i8* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 2
  %67 = call i8* @xmalloc(i32 %66)
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8**, i8*** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @memcpy(i8* %68, i8* %73, i32 %74)
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8 38, i8* %79, align 1
  %80 = load i8*, i8** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 0, i8* %84, align 1
  br label %85

85:                                               ; preds = %58, %52, %49
  store i32 1, i32* @sync_execution, align 4
  %86 = load %struct.interp*, %struct.interp** %8, align 8
  %87 = load i8**, i8*** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @interp_exec(%struct.interp* %86, i8* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = call i32 (...) @mi_error_last_message()
  %96 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %96, i32* %9, align 4
  br label %105

97:                                               ; preds = %85
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @xfree(i8* %98)
  %100 = load i32, i32* @ALL_CLEANUPS, align 4
  %101 = call i32 @do_exec_error_cleanups(i32 %100)
  store i32 0, i32* @sync_execution, align 4
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %45

105:                                              ; preds = %94, %45
  %106 = call i32 (...) @mi_remove_notify_hooks()
  %107 = call i64 (...) @target_can_async_p()
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load i64, i64* @target_executing, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* @raw_stdout, align 4
  %114 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @mi_interpreter_exec_continuation, align 4
  %116 = call i32 @add_continuation(i32 %115, i32* null)
  br label %117

117:                                              ; preds = %112, %109, %105
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %117, %37, %27, %17
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @xasprintf(i32*, i8*, ...) #1

declare dso_local %struct.interp* @interp_lookup(i8*) #1

declare dso_local i32 @interp_exec_p(%struct.interp*) #1

declare dso_local i32 @mi_insert_notify_hooks(...) #1

declare dso_local i64 @target_can_async_p(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @interp_exec(%struct.interp*, i8*) #1

declare dso_local i32 @mi_error_last_message(...) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @do_exec_error_cleanups(i32) #1

declare dso_local i32 @mi_remove_notify_hooks(...) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @add_continuation(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
