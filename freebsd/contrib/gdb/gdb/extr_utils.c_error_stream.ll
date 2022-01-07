; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_error_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_error_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@gdb_lasterr = common dso_local global i32 0, align 4
@do_write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gdb_stdout = common dso_local global i32 0, align 4
@error_pre_print = common dso_local global i64 0, align 8
@gdb_stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RETURN_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_stream(%struct.ui_file* %0) #0 {
  %2 = alloca %struct.ui_file*, align 8
  store %struct.ui_file* %0, %struct.ui_file** %2, align 8
  br i1 true, label %3, label %5

3:                                                ; preds = %1
  %4 = call i32 (...) @error_begin_hook()
  br label %5

5:                                                ; preds = %3, %1
  %6 = load i32, i32* @gdb_lasterr, align 4
  %7 = call i32 @ui_file_rewind(i32 %6)
  %8 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %9 = load i32, i32* @do_write, align 4
  %10 = load i32, i32* @gdb_lasterr, align 4
  %11 = call i32 @ui_file_put(%struct.ui_file* %8, i32 %9, i32 %10)
  %12 = call i32 (...) @target_terminal_ours()
  %13 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @gdb_stdout, align 4
  %15 = call i32 @gdb_flush(i32 %14)
  %16 = call i32 (...) @annotate_error_begin()
  %17 = load i64, i64* @error_pre_print, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i64, i64* @error_pre_print, align 8
  %21 = load i32, i32* @gdb_stderr, align 4
  %22 = call i32 @fputs_filtered(i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %5
  %24 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %25 = load i32, i32* @do_write, align 4
  %26 = load i32, i32* @gdb_stderr, align 4
  %27 = call i32 @ui_file_put(%struct.ui_file* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @gdb_stderr, align 4
  %29 = call i32 @fprintf_filtered(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @RETURN_ERROR, align 4
  %31 = call i32 @throw_exception(i32 %30)
  ret void
}

declare dso_local i32 @error_begin_hook(...) #1

declare dso_local i32 @ui_file_rewind(i32) #1

declare dso_local i32 @ui_file_put(%struct.ui_file*, i32, i32) #1

declare dso_local i32 @target_terminal_ours(...) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @annotate_error_begin(...) #1

declare dso_local i32 @fputs_filtered(i64, i32) #1

declare dso_local i32 @fprintf_filtered(i32, i8*) #1

declare dso_local i32 @throw_exception(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
