; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_thread-db.c_thread_db_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_thread-db.c_thread_db_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.inferior_list_entry = type { i32 }

@current_inferior = common dso_local global i64 0, align 8
@proc_handle = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@thread_agent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"error initializing thread_db library.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_db_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @current_inferior, align 8
  %4 = inttoptr i64 %3 to %struct.inferior_list_entry*
  %5 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @proc_handle, i32 0, i32 0), align 4
  %7 = call i32 @td_ta_new(%struct.TYPE_3__* @proc_handle, i32* @thread_agent)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %16 [
    i32 129, label %9
    i32 128, label %10
  ]

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

10:                                               ; preds = %0
  %11 = call i32 (...) @thread_db_enable_reporting()
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %19

14:                                               ; preds = %10
  %15 = call i32 (...) @thread_db_find_new_threads()
  store i32 1, i32* %1, align 4
  br label %19

16:                                               ; preds = %0
  %17 = call i32 @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %14, %13, %9
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @td_ta_new(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @thread_db_enable_reporting(...) #1

declare dso_local i32 @thread_db_find_new_threads(...) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
