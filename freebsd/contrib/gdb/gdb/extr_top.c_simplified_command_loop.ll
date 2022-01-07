; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_simplified_command_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_simplified_command_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@stdin = common dso_local global i64 0, align 8
@instream = common dso_local global i64 0, align 8
@quit_flag = common dso_local global i64 0, align 8
@null_cleanup = common dso_local global i32 0, align 4
@stop_bpstat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @simplified_command_loop(i8* (i8*)* %0, void (i8*, i32)* %1) #0 {
  %3 = alloca i8* (i8*)*, align 8
  %4 = alloca void (i8*, i32)*, align 8
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* (i8*)* %0, i8* (i8*)** %3, align 8
  store void (i8*, i32)* %1, void (i8*, i32)** %4, align 8
  %8 = load i64, i64* @stdin, align 8
  %9 = call i32 @ISATTY(i64 %8)
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %45, %2
  %11 = load i64, i64* @instream, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i64, i64* @instream, align 8
  %15 = call i32 @feof(i64 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %55

20:                                               ; preds = %18
  store i64 0, i64* @quit_flag, align 8
  %21 = load i64, i64* @instream, align 8
  %22 = load i64, i64* @stdin, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @reinitialize_more_filter()
  br label %29

29:                                               ; preds = %27, %24, %20
  %30 = load i32, i32* @null_cleanup, align 4
  %31 = call %struct.cleanup* @make_cleanup(i32 %30, i32 0)
  store %struct.cleanup* %31, %struct.cleanup** %5, align 8
  %32 = load i8* (i8*)*, i8* (i8*)** %3, align 8
  %33 = load i64, i64* @instream, align 8
  %34 = load i64, i64* @stdin, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i8* (...) @get_prompt()
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i8* [ %37, %36 ], [ null, %38 ]
  %41 = call i8* %32(i8* %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %55

45:                                               ; preds = %39
  %46 = load void (i8*, i32)*, void (i8*, i32)** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* @instream, align 8
  %49 = load i64, i64* @stdin, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  call void %46(i8* %47, i32 %51)
  %52 = call i32 @bpstat_do_actions(i32* @stop_bpstat)
  %53 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %54 = call i32 @do_cleanups(%struct.cleanup* %53)
  br label %10

55:                                               ; preds = %44, %18
  ret void
}

declare dso_local i32 @ISATTY(i64) #1

declare dso_local i32 @feof(i64) #1

declare dso_local i32 @reinitialize_more_filter(...) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local i8* @get_prompt(...) #1

declare dso_local i32 @bpstat_do_actions(i32*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
