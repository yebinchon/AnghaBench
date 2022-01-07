; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_execute_async_cli_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_execute_async_cli_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@mi_exec_async_cli_cmd_continuation = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@last_async_command = common dso_local global i8* null, align 8
@raw_stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"^running\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"(gdb) \0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"*stopped\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MI_CMD_QUIET = common dso_local global i32 0, align 4
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_execute_async_cli_command(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cleanup*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i64 (...) @target_can_async_p()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = add nsw i64 %15, 2
  %17 = call i64 @xmalloc(i64 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %10, align 8
  %19 = load i32, i32* @free, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @make_exec_cleanup(i32 %19, i8* %20)
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strcpy(i8* %22, i8* %23)
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @strcat(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @xasprintf(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  %30 = load i32, i32* @free, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @make_exec_cleanup(i32 %30, i8* %31)
  %33 = load i32, i32* @mi_exec_async_cli_cmd_continuation, align 4
  %34 = call i32 @add_continuation(i32 %33, i32* null)
  store %struct.cleanup* null, %struct.cleanup** %8, align 8
  br label %42

35:                                               ; preds = %3
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @xasprintf(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %37)
  %39 = load i32, i32* @xfree, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call %struct.cleanup* @make_cleanup(i32 %39, i8* %40)
  store %struct.cleanup* %41, %struct.cleanup** %8, align 8
  br label %42

42:                                               ; preds = %35, %13
  %43 = call i64 (...) @target_can_async_p()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** @last_async_command, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8*, i8** @last_async_command, align 8
  %50 = load i32, i32* @raw_stdout, align 4
  %51 = call i32 @fputs_unfiltered(i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* @raw_stdout, align 4
  %54 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @raw_stdout, align 4
  %56 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @raw_stdout, align 4
  %58 = call i32 @gdb_flush(i32 %57)
  br label %69

59:                                               ; preds = %42
  %60 = load i8*, i8** @last_async_command, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i8*, i8** @last_async_command, align 8
  %64 = load i32, i32* @raw_stdout, align 4
  %65 = call i32 @fputs_unfiltered(i8* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* @raw_stdout, align 4
  %68 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %52
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @execute_command(i8* %70, i32 0)
  %72 = call i64 (...) @target_can_async_p()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %69
  %75 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %76 = call i32 @do_cleanups(%struct.cleanup* %75)
  %77 = load i8*, i8** @last_async_command, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i8*, i8** @last_async_command, align 8
  %81 = load i32, i32* @raw_stdout, align 4
  %82 = call i32 @fputs_unfiltered(i8* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* @raw_stdout, align 4
  %85 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @uiout, align 4
  %87 = load i32, i32* @raw_stdout, align 4
  %88 = call i32 @mi_out_put(i32 %86, i32 %87)
  %89 = load i32, i32* @uiout, align 4
  %90 = call i32 @mi_out_rewind(i32 %89)
  %91 = load i32, i32* @raw_stdout, align 4
  %92 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @MI_CMD_QUIET, align 4
  store i32 %93, i32* %4, align 4
  br label %96

94:                                               ; preds = %69
  %95 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %83
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @target_can_async_p(...) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @make_exec_cleanup(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @add_continuation(i32, i32*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @execute_command(i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @mi_out_put(i32, i32) #1

declare dso_local i32 @mi_out_rewind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
