; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_quit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_quit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.serial = type { i32 }

@gdb_stdout = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@quit_pre_print = common dso_local global i64 0, align 8
@job_control = common dso_local global i64 0, align 8
@current_target = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"Quit\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Quit (expect signal SIGINT when the program is resumed)\0A\00", align 1
@RETURN_QUIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quit() #0 {
  %1 = alloca %struct.serial*, align 8
  %2 = call %struct.serial* @serial_fdopen(i32 1)
  store %struct.serial* %2, %struct.serial** %1, align 8
  %3 = call i32 (...) @target_terminal_ours()
  %4 = call i32 @wrap_here(i8* null)
  %5 = load i32, i32* @gdb_stdout, align 4
  %6 = call i32 @gdb_flush(i32 %5)
  %7 = load i32, i32* @gdb_stderr, align 4
  %8 = call i32 @gdb_flush(i32 %7)
  %9 = load %struct.serial*, %struct.serial** %1, align 8
  %10 = call i32 @serial_drain_output(%struct.serial* %9)
  %11 = load %struct.serial*, %struct.serial** %1, align 8
  %12 = call i32 @serial_un_fdopen(%struct.serial* %11)
  %13 = call i32 (...) @annotate_error_begin()
  %14 = load i64, i64* @quit_pre_print, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i64, i64* @quit_pre_print, align 8
  %18 = load i32, i32* @gdb_stderr, align 4
  %19 = call i32 @fputs_unfiltered(i64 %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %0
  %21 = load i64, i64* @job_control, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_target, i32 0, i32 0), align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @gdb_stderr, align 4
  %28 = call i32 @fprintf_unfiltered(i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @gdb_stderr, align 4
  %31 = call i32 @fprintf_unfiltered(i32 %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @RETURN_QUIT, align 4
  %34 = call i32 @throw_exception(i32 %33)
  ret void
}

declare dso_local %struct.serial* @serial_fdopen(i32) #1

declare dso_local i32 @target_terminal_ours(...) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @serial_drain_output(%struct.serial*) #1

declare dso_local i32 @serial_un_fdopen(%struct.serial*) #1

declare dso_local i32 @annotate_error_begin(...) #1

declare dso_local i32 @fputs_unfiltered(i64, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

declare dso_local i32 @throw_exception(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
