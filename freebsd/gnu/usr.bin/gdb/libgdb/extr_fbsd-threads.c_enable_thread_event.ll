; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_enable_thread_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_enable_thread_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TD_OK = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@builtin_type_void_func_ptr = common dso_local global i32 0, align 4
@current_target = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32*)* @enable_thread_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enable_thread_event(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @td_ta_event_addr_p(i32* %10, i32 %11, %struct.TYPE_5__* %8)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @TD_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %4, align 8
  br label %30

18:                                               ; preds = %3
  %19 = load i32, i32* @current_gdbarch, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* @builtin_type_void_func_ptr, align 4
  %23 = call i32 @extract_typed_address(i32* %21, i32 %22)
  %24 = call i32 @gdbarch_convert_from_func_ptr_addr(i32 %19, i32 %23, i32* @current_target)
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @create_thread_event_breakpoint(i32 %27)
  %29 = load i64, i64* @TD_OK, align 8
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %18, %16
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local i64 @td_ta_event_addr_p(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gdbarch_convert_from_func_ptr_addr(i32, i32, i32*) #1

declare dso_local i32 @extract_typed_address(i32*, i32) #1

declare dso_local i32 @create_thread_event_breakpoint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
