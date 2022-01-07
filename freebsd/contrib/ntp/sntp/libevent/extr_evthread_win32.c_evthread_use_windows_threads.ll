; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread_win32.c_evthread_use_windows_threads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread_win32.c_evthread_use_windows_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evthread_lock_callbacks = type { i32, i32, i32, i32, i32, i32 }
%struct.evthread_condition_callbacks = type { i32, i32, i32, i32, i32 }

@EVTHREAD_LOCK_API_VERSION = common dso_local global i32 0, align 4
@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4
@evthread_win32_lock_create = common dso_local global i32 0, align 4
@evthread_win32_lock_free = common dso_local global i32 0, align 4
@evthread_win32_lock = common dso_local global i32 0, align 4
@evthread_win32_unlock = common dso_local global i32 0, align 4
@EVTHREAD_CONDITION_API_VERSION = common dso_local global i32 0, align 4
@evthread_win32_cond_alloc = common dso_local global i32 0, align 4
@evthread_win32_cond_free = common dso_local global i32 0, align 4
@evthread_win32_cond_signal = common dso_local global i32 0, align 4
@evthread_win32_cond_wait = common dso_local global i32 0, align 4
@evthread_win32_get_id = common dso_local global i32 0, align 4
@evthread_win32_condvar_alloc = common dso_local global i32 0, align 4
@evthread_win32_condvar_free = common dso_local global i32 0, align 4
@evthread_win32_condvar_signal = common dso_local global i32 0, align 4
@evthread_win32_condvar_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evthread_use_windows_threads() #0 {
  %1 = alloca %struct.evthread_lock_callbacks, align 4
  %2 = alloca %struct.evthread_condition_callbacks, align 4
  %3 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 0
  %4 = load i32, i32* @EVTHREAD_LOCK_API_VERSION, align 4
  store i32 %4, i32* %3, align 4
  %5 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 1
  %6 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 2
  %8 = load i32, i32* @evthread_win32_lock_create, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 3
  %10 = load i32, i32* @evthread_win32_lock_free, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 4
  %12 = load i32, i32* @evthread_win32_lock, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %1, i32 0, i32 5
  %14 = load i32, i32* @evthread_win32_unlock, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.evthread_condition_callbacks, %struct.evthread_condition_callbacks* %2, i32 0, i32 0
  %16 = load i32, i32* @EVTHREAD_CONDITION_API_VERSION, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.evthread_condition_callbacks, %struct.evthread_condition_callbacks* %2, i32 0, i32 1
  %18 = load i32, i32* @evthread_win32_cond_alloc, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.evthread_condition_callbacks, %struct.evthread_condition_callbacks* %2, i32 0, i32 2
  %20 = load i32, i32* @evthread_win32_cond_free, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.evthread_condition_callbacks, %struct.evthread_condition_callbacks* %2, i32 0, i32 3
  %22 = load i32, i32* @evthread_win32_cond_signal, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.evthread_condition_callbacks, %struct.evthread_condition_callbacks* %2, i32 0, i32 4
  %24 = load i32, i32* @evthread_win32_cond_wait, align 4
  store i32 %24, i32* %23, align 4
  %25 = call i32 @evthread_set_lock_callbacks(%struct.evthread_lock_callbacks* %1)
  %26 = load i32, i32* @evthread_win32_get_id, align 4
  %27 = call i32 @evthread_set_id_callback(i32 %26)
  %28 = call i32 @evthread_set_condition_callbacks(%struct.evthread_condition_callbacks* %2)
  ret i32 0
}

declare dso_local i32 @evthread_set_lock_callbacks(%struct.evthread_lock_callbacks*) #1

declare dso_local i32 @evthread_set_id_callback(i32) #1

declare dso_local i32 @evthread_set_condition_callbacks(%struct.evthread_condition_callbacks*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
