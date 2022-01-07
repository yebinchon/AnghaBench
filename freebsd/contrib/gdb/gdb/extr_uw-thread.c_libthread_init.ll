; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_libthread_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_libthread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i64, i8*, i32, i32, i32*, %struct.TYPE_4__*)* }
%struct.minimal_symbol = type { i32 }
%struct.thread_debug = type { i32, i64, i32 }
%struct.breakpoint = type { i32 }

@uw_thread_active = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"_thr_debug\00", align 1
@thr_debug_addr = common dso_local global i64 0, align 8
@base_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@current_target = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@uw_thread_ops = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i32 0, align 4
@thr_brk_addr = common dso_local global i64 0, align 8
@thr_map_main = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"uw-thread: unable to initialize user-mode thread debugging\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @libthread_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libthread_init() #0 {
  %1 = alloca %struct.minimal_symbol*, align 8
  %2 = alloca %struct.thread_debug, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.breakpoint*, align 8
  %5 = alloca i32, align 4
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* @uw_thread_active, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %58

9:                                                ; preds = %0
  %10 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store %struct.minimal_symbol* %10, %struct.minimal_symbol** %1, align 8
  %11 = icmp ne %struct.minimal_symbol* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  br label %58

13:                                               ; preds = %9
  %14 = load %struct.minimal_symbol*, %struct.minimal_symbol** %1, align 8
  %15 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %14)
  store i64 %15, i64* @thr_debug_addr, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %58

18:                                               ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @base_ops to i8*), i8* align 8 bitcast (%struct.TYPE_4__* @current_target to i8*), i64 8, i1 false)
  %19 = call i32 @read_thr_debug(%struct.thread_debug* %2)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %58

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.thread_debug, %struct.thread_debug* %2, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %58

27:                                               ; preds = %22
  %28 = call i32 @push_target(i32* @uw_thread_ops)
  store i32 1, i32* @uw_thread_active, align 4
  %29 = load i32, i32* @target_has_execution, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 (...) @notice_threads()
  br label %54

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.thread_debug, %struct.thread_debug* %2, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* @thr_brk_addr, align 8
  %36 = load i64, i64* @thr_brk_addr, align 8
  %37 = call %struct.breakpoint* @create_thread_event_breakpoint(i64 %36)
  store %struct.breakpoint* %37, %struct.breakpoint** %4, align 8
  %38 = icmp ne %struct.breakpoint* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %55

40:                                               ; preds = %33
  %41 = load i64, i64* @thr_debug_addr, align 8
  %42 = inttoptr i64 %41 to %struct.thread_debug*
  %43 = getelementptr inbounds %struct.thread_debug, %struct.thread_debug* %42, i32 0, i32 0
  %44 = ptrtoint i32* %43 to i64
  store i64 %44, i64* %3, align 8
  %45 = load i32 (i64, i8*, i32, i32, i32*, %struct.TYPE_4__*)*, i32 (i64, i8*, i32, i32, i32*, %struct.TYPE_4__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @base_ops, i32 0, i32 0), align 8
  %46 = load i64, i64* %3, align 8
  %47 = bitcast i32* %5 to i8*
  %48 = call i32 %45(i64 %46, i8* %47, i32 4, i32 1, i32* null, %struct.TYPE_4__* @base_ops)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %52 = call i32 @delete_breakpoint(%struct.breakpoint* %51)
  br label %55

53:                                               ; preds = %40
  store i64 0, i64* @thr_map_main, align 8
  br label %54

54:                                               ; preds = %53, %31
  br label %58

55:                                               ; preds = %50, %39
  %56 = call i32 @warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 (...) @deactivate_uw_thread()
  br label %58

58:                                               ; preds = %55, %54, %26, %21, %17, %12, %8
  ret void
}

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @read_thr_debug(%struct.thread_debug*) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @notice_threads(...) #1

declare dso_local %struct.breakpoint* @create_thread_event_breakpoint(i64) #1

declare dso_local i32 @delete_breakpoint(%struct.breakpoint*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @deactivate_uw_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
