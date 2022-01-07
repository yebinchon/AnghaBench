; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_osf_solib_create_inferior_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_osf_solib_create_inferior_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.target_ops = type { i32 }

@symfile_objfile = common dso_local global %struct.TYPE_2__* null, align 8
@DYNAMIC = common dso_local global i32 0, align 4
@STOP_QUIETLY = common dso_local global i32 0, align 4
@stop_soon = common dso_local global i32 0, align 4
@TARGET_SIGNAL_0 = common dso_local global i64 0, align 8
@stop_signal = common dso_local global i64 0, align 8
@minus_one_ptid = common dso_local global i32 0, align 4
@TARGET_SIGNAL_TRAP = common dso_local global i64 0, align 8
@auto_solib_add = common dso_local global i32 0, align 4
@NO_STOP_QUIETLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @osf_solib_create_inferior_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osf_solib_create_inferior_hook() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symfile_objfile, align 8
  %2 = icmp eq %struct.TYPE_2__* %1, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symfile_objfile, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symfile_objfile, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @bfd_get_file_flags(i32* %11)
  %13 = load i32, i32* @DYNAMIC, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8, %3, %0
  br label %35

17:                                               ; preds = %8
  %18 = call i32 (...) @clear_proceed_status()
  %19 = load i32, i32* @STOP_QUIETLY, align 4
  store i32 %19, i32* @stop_soon, align 4
  %20 = load i64, i64* @TARGET_SIGNAL_0, align 8
  store i64 %20, i64* @stop_signal, align 8
  br label %21

21:                                               ; preds = %26, %17
  %22 = load i32, i32* @minus_one_ptid, align 4
  %23 = load i64, i64* @stop_signal, align 8
  %24 = call i32 @target_resume(i32 %22, i32 0, i64 %23)
  %25 = call i32 (...) @wait_for_inferior()
  br label %26

26:                                               ; preds = %21
  %27 = load i64, i64* @stop_signal, align 8
  %28 = load i64, i64* @TARGET_SIGNAL_TRAP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %21, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @auto_solib_add, align 4
  %32 = call i32 @solib_add(i8* null, i32 0, %struct.target_ops* null, i32 %31)
  %33 = load i32, i32* @NO_STOP_QUIETLY, align 4
  store i32 %33, i32* @stop_soon, align 4
  %34 = call i32 (...) @re_enable_breakpoints_in_shlibs()
  br label %35

35:                                               ; preds = %30, %16
  ret void
}

declare dso_local i32 @bfd_get_file_flags(i32*) #1

declare dso_local i32 @clear_proceed_status(...) #1

declare dso_local i32 @target_resume(i32, i32, i64) #1

declare dso_local i32 @wait_for_inferior(...) #1

declare dso_local i32 @solib_add(i8*, i32, %struct.target_ops*, i32) #1

declare dso_local i32 @re_enable_breakpoints_in_shlibs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
