; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread_pthread.c_evthread_use_pthreads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread_pthread.c_evthread_use_pthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evthread_lock_callbacks = type { i32, i32, i32, i32, i32, i32 }
%struct.evthread_condition_callbacks = type { i32, i32, i32, i32, i32 }

@EVTHREAD_LOCK_API_VERSION = common dso_local global i32 0, align 4
@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4
@evthread_posix_lock_alloc = common dso_local global i32 0, align 4
@evthread_posix_lock_free = common dso_local global i32 0, align 4
@evthread_posix_lock = common dso_local global i32 0, align 4
@evthread_posix_unlock = common dso_local global i32 0, align 4
@EVTHREAD_CONDITION_API_VERSION = common dso_local global i32 0, align 4
@evthread_posix_cond_alloc = common dso_local global i32 0, align 4
@evthread_posix_cond_free = common dso_local global i32 0, align 4
@evthread_posix_cond_signal = common dso_local global i32 0, align 4
@evthread_posix_cond_wait = common dso_local global i32 0, align 4
@attr_recursive = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@evthread_posix_get_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evthread_use_pthreads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.evthread_lock_callbacks, align 4
  %3 = alloca %struct.evthread_condition_callbacks, align 4
  %4 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %2, i32 0, i32 0
  %5 = load i32, i32* @EVTHREAD_LOCK_API_VERSION, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %2, i32 0, i32 1
  %7 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %2, i32 0, i32 2
  %9 = load i32, i32* @evthread_posix_lock_alloc, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %2, i32 0, i32 3
  %11 = load i32, i32* @evthread_posix_lock_free, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %2, i32 0, i32 4
  %13 = load i32, i32* @evthread_posix_lock, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %2, i32 0, i32 5
  %15 = load i32, i32* @evthread_posix_unlock, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.evthread_condition_callbacks, %struct.evthread_condition_callbacks* %3, i32 0, i32 0
  %17 = load i32, i32* @EVTHREAD_CONDITION_API_VERSION, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.evthread_condition_callbacks, %struct.evthread_condition_callbacks* %3, i32 0, i32 1
  %19 = load i32, i32* @evthread_posix_cond_alloc, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.evthread_condition_callbacks, %struct.evthread_condition_callbacks* %3, i32 0, i32 2
  %21 = load i32, i32* @evthread_posix_cond_free, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.evthread_condition_callbacks, %struct.evthread_condition_callbacks* %3, i32 0, i32 3
  %23 = load i32, i32* @evthread_posix_cond_signal, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.evthread_condition_callbacks, %struct.evthread_condition_callbacks* %3, i32 0, i32 4
  %25 = load i32, i32* @evthread_posix_cond_wait, align 4
  store i32 %25, i32* %24, align 4
  %26 = call i64 @pthread_mutexattr_init(i32* @attr_recursive)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %39

29:                                               ; preds = %0
  %30 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %31 = call i64 @pthread_mutexattr_settype(i32* @attr_recursive, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -1, i32* %1, align 4
  br label %39

34:                                               ; preds = %29
  %35 = call i32 @evthread_set_lock_callbacks(%struct.evthread_lock_callbacks* %2)
  %36 = call i32 @evthread_set_condition_callbacks(%struct.evthread_condition_callbacks* %3)
  %37 = load i32, i32* @evthread_posix_get_id, align 4
  %38 = call i32 @evthread_set_id_callback(i32 %37)
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %34, %33, %28
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i32 @evthread_set_lock_callbacks(%struct.evthread_lock_callbacks*) #1

declare dso_local i32 @evthread_set_condition_callbacks(%struct.evthread_condition_callbacks*) #1

declare dso_local i32 @evthread_set_id_callback(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
