; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_enable_thread_event_reporting.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_enable_thread_event_reporting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@td_ta_event_addr_p = common dso_local global i32* null, align 8
@td_ta_event_getmsg_p = common dso_local global i32* null, align 8
@td_thr_event_enable_p = common dso_local global i32* null, align 8
@TD_CREATE = common dso_local global i32 0, align 4
@TD_DEATH = common dso_local global i32 0, align 4
@thread_agent = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unable to set global thread event mask: %s\00", align 1
@td_create_bp_addr = common dso_local global i64 0, align 8
@td_death_bp_addr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Unable to get location for thread creation breakpoint: %s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Unable to get location for thread death breakpoint: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @enable_thread_event_reporting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_thread_event_reporting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32*, i32** @td_ta_event_addr_p, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = load i32*, i32** @td_ta_event_getmsg_p, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32*, i32** @td_thr_event_enable_p, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6, %0
  br label %51

13:                                               ; preds = %9
  %14 = call i32 @td_event_emptyset(i32* %1)
  %15 = load i32, i32* @TD_CREATE, align 4
  %16 = call i32 @td_event_addset(i32* %1, i32 %15)
  %17 = load i32, i32* @TD_DEATH, align 4
  %18 = call i32 @td_event_addset(i32* %1, i32 %17)
  %19 = load i32, i32* @thread_agent, align 4
  %20 = call i64 @td_ta_set_event_p(i32 %19, i32* %1)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @TD_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @thread_db_err_str(i64 %25)
  %27 = call i32 @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %51

28:                                               ; preds = %13
  %29 = call i32 (...) @remove_thread_event_breakpoints()
  store i64 0, i64* @td_create_bp_addr, align 8
  store i64 0, i64* @td_death_bp_addr, align 8
  %30 = load i32, i32* @thread_agent, align 4
  %31 = load i32, i32* @TD_CREATE, align 4
  %32 = call i64 @enable_thread_event(i32 %30, i32 %31, i64* @td_create_bp_addr)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @TD_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @thread_db_err_str(i64 %37)
  %39 = call i32 @warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %51

40:                                               ; preds = %28
  %41 = load i32, i32* @thread_agent, align 4
  %42 = load i32, i32* @TD_DEATH, align 4
  %43 = call i64 @enable_thread_event(i32 %41, i32 %42, i64* @td_death_bp_addr)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @TD_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @thread_db_err_str(i64 %48)
  %50 = call i32 @warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %12, %24, %36, %47, %40
  ret void
}

declare dso_local i32 @td_event_emptyset(i32*) #1

declare dso_local i32 @td_event_addset(i32*, i32) #1

declare dso_local i64 @td_ta_set_event_p(i32, i32*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @thread_db_err_str(i64) #1

declare dso_local i32 @remove_thread_event_breakpoints(...) #1

declare dso_local i64 @enable_thread_event(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
