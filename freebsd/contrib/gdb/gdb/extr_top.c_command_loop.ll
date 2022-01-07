; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_command_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_command_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@stdin = common dso_local global i64 0, align 8
@instream = common dso_local global i64 0, align 8
@quit_flag = common dso_local global i64 0, align 8
@null_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@display_space = external dso_local global i32, align 4
@stop_bpstat = common dso_local global i32 0, align 4
@display_time = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Command execution time: %ld.%06ld\0A\00", align 1
@lim_at_start = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @command_loop() #0 {
  %1 = alloca %struct.cleanup*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i64, i64* @stdin, align 8
  %7 = call i32 @ISATTY(i64 %6)
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %86, %0
  %9 = load i64, i64* @instream, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i64, i64* @instream, align 8
  %13 = call i32 @feof(i64 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %87

18:                                               ; preds = %16
  br i1 true, label %19, label %27

19:                                               ; preds = %18
  %20 = load i64, i64* @instream, align 8
  %21 = load i64, i64* @stdin, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* @instream, align 8
  %25 = call i8* (...) @get_prompt()
  %26 = call i32 @window_hook(i64 %24, i8* %25)
  br label %27

27:                                               ; preds = %23, %19, %18
  store i64 0, i64* @quit_flag, align 8
  %28 = load i64, i64* @instream, align 8
  %29 = load i64, i64* @stdin, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @reinitialize_more_filter()
  br label %36

36:                                               ; preds = %34, %31, %27
  %37 = load i32, i32* @null_cleanup, align 4
  %38 = call %struct.cleanup* @make_cleanup(i32 %37, i32 0)
  store %struct.cleanup* %38, %struct.cleanup** %1, align 8
  %39 = load i64, i64* @instream, align 8
  %40 = load i64, i64* @stdin, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i8* (...) @get_prompt()
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i8* [ %43, %42 ], [ null, %44 ]
  %47 = load i64, i64* @instream, align 8
  %48 = load i64, i64* @stdin, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i8* @command_line_input(i8* %46, i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %51, i8** %2, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %87

55:                                               ; preds = %45
  %56 = call i64 (...) @get_run_time()
  store i64 %56, i64* %4, align 8
  %57 = load i32, i32* @display_space, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i8*, i8** %2, align 8
  %62 = load i64, i64* @instream, align 8
  %63 = load i64, i64* @stdin, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @execute_command(i8* %61, i32 %65)
  %67 = call i32 @bpstat_do_actions(i32* @stop_bpstat)
  %68 = load %struct.cleanup*, %struct.cleanup** %1, align 8
  %69 = call i32 @do_cleanups(%struct.cleanup* %68)
  %70 = load i32, i32* @display_time, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %60
  %73 = call i64 (...) @get_run_time()
  %74 = load i64, i64* %4, align 8
  %75 = sub nsw i64 %73, %74
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = sdiv i64 %76, 1000000
  %78 = load i64, i64* %5, align 8
  %79 = srem i64 %78, 1000000
  %80 = trunc i64 %79 to i8
  %81 = call i32 (i8*, i64, i8, ...) @printf_unfiltered(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %77, i8 signext %80)
  br label %82

82:                                               ; preds = %72, %60
  %83 = load i32, i32* @display_space, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %85, %82
  br label %8

87:                                               ; preds = %54, %16
  ret void
}

declare dso_local i32 @ISATTY(i64) #1

declare dso_local i32 @feof(i64) #1

declare dso_local i32 @window_hook(i64, i8*) #1

declare dso_local i8* @get_prompt(...) #1

declare dso_local i32 @reinitialize_more_filter(...) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local i8* @command_line_input(i8*, i32, i8*) #1

declare dso_local i64 @get_run_time(...) #1

declare dso_local i32 @execute_command(i8*, i32) #1

declare dso_local i32 @bpstat_do_actions(i32*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @printf_unfiltered(i8*, i64, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
