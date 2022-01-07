; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_thread-db.c_thread_db_enable_reporting.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_thread-db.c_thread_db_enable_reporting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@TD_CREATE = common dso_local global i32 0, align 4
@thread_agent = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Unable to set global thread event mask: %s\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Unable to get location for thread creation breakpoint: %s\00", align 1
@thread_db_create_event = common dso_local global i32 0, align 4
@TD_DEATH = common dso_local global i32 0, align 4
@thread_db_death_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @thread_db_enable_reporting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_db_enable_reporting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @td_event_emptyset(i32* %2)
  %6 = load i32, i32* @TD_CREATE, align 4
  %7 = call i32 @td_event_addset(i32* %2, i32 %6)
  %8 = load i32, i32* @thread_agent, align 4
  %9 = call i64 @td_ta_set_event(i32 %8, i32* %2)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @TD_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @thread_db_err_str(i64 %14)
  %16 = call i32 @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %1, align 4
  br label %35

17:                                               ; preds = %0
  %18 = load i32, i32* @thread_agent, align 4
  %19 = load i32, i32* @TD_CREATE, align 4
  %20 = call i64 @td_ta_event_addr(i32 %18, i32 %19, %struct.TYPE_5__* %3)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @TD_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @thread_db_err_str(i64 %25)
  %27 = call i32 @warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 0, i32* %1, align 4
  br label %35

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @thread_db_create_event, align 4
  %34 = call i32 @set_breakpoint_at(i32 %32, i32 %33)
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %28, %24, %13
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @td_event_emptyset(i32*) #1

declare dso_local i32 @td_event_addset(i32*, i32) #1

declare dso_local i64 @td_ta_set_event(i32, i32*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @thread_db_err_str(i64) #1

declare dso_local i64 @td_ta_event_addr(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @set_breakpoint_at(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
