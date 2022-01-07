; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_quit_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_quit_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qt_args = type { i32, i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@attach_flag = common dso_local global i64 0, align 8
@current_target = common dso_local global i32 0, align 4
@write_history_p = common dso_local global i64 0, align 8
@history_filename = common dso_local global i64 0, align 8
@ALL_CLEANUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @quit_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quit_target(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.qt_args*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.qt_args*
  store %struct.qt_args* %5, %struct.qt_args** %3, align 8
  %6 = load i32, i32* @inferior_ptid, align 4
  %7 = load i32, i32* @null_ptid, align 4
  %8 = call i32 @ptid_equal(i32 %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @target_has_execution, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i64, i64* @attach_flag, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.qt_args*, %struct.qt_args** %3, align 8
  %18 = getelementptr inbounds %struct.qt_args, %struct.qt_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qt_args*, %struct.qt_args** %3, align 8
  %21 = getelementptr inbounds %struct.qt_args, %struct.qt_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @target_detach(i32 %19, i32 %22)
  br label %26

24:                                               ; preds = %13
  %25 = call i32 (...) @target_kill()
  br label %26

26:                                               ; preds = %24, %16
  br label %27

27:                                               ; preds = %26, %10, %1
  %28 = call i32 @target_close(i32* @current_target, i32 1)
  %29 = load i64, i64* @write_history_p, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i64, i64* @history_filename, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* @history_filename, align 8
  %36 = call i32 @write_history(i64 %35)
  br label %37

37:                                               ; preds = %34, %31, %27
  %38 = load i32, i32* @ALL_CLEANUPS, align 4
  %39 = call i32 @do_final_cleanups(i32 %38)
  ret i32 0
}

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @target_detach(i32, i32) #1

declare dso_local i32 @target_kill(...) #1

declare dso_local i32 @target_close(i32*, i32) #1

declare dso_local i32 @write_history(i64) #1

declare dso_local i32 @do_final_cleanups(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
