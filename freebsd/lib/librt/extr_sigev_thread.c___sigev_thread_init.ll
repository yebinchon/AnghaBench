; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c___sigev_thread_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c___sigev_thread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__sigev_thread_init.inited = internal global i32 0, align 4
@PTHREAD_MUTEX_NORMAL = common dso_local global i32 0, align 4
@sigev_list_mtx = common dso_local global i32 0, align 4
@HASH_QUEUES = common dso_local global i32 0, align 4
@sigev_hash = common dso_local global i32* null, align 8
@sigev_all = common dso_local global i32 0, align 4
@sigev_threads = common dso_local global i32 0, align 4
@sigev_default_thread = common dso_local global i32* null, align 8
@atfork_registered = common dso_local global i32 0, align 4
@__sigev_fork_prepare = common dso_local global i32 0, align 4
@__sigev_fork_parent = common dso_local global i32 0, align 4
@__sigev_fork_child = common dso_local global i32 0, align 4
@sigev_default_attr = common dso_local global i32 0, align 4
@PTHREAD_SCOPE_SYSTEM = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__sigev_thread_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @_pthread_mutexattr_init(i32* %1)
  %4 = load i32, i32* @PTHREAD_MUTEX_NORMAL, align 4
  %5 = call i32 @_pthread_mutexattr_settype(i32* %1, i32 %4)
  %6 = call i32 @malloc(i32 4)
  store i32 %6, i32* @sigev_list_mtx, align 4
  %7 = load i32, i32* @sigev_list_mtx, align 4
  %8 = call i32 @_pthread_mutex_init(i32 %7, i32* %1)
  %9 = call i32 @_pthread_mutexattr_destroy(i32* %1)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %20, %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @HASH_QUEUES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32*, i32** @sigev_hash, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @LIST_INIT(i32* %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %10

23:                                               ; preds = %10
  %24 = call i32 @LIST_INIT(i32* @sigev_all)
  %25 = call i32 @LIST_INIT(i32* @sigev_threads)
  store i32* null, i32** @sigev_default_thread, align 8
  %26 = load i32, i32* @atfork_registered, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @__sigev_fork_prepare, align 4
  %30 = load i32, i32* @__sigev_fork_parent, align 4
  %31 = load i32, i32* @__sigev_fork_child, align 4
  %32 = call i32 @_pthread_atfork(i32 %29, i32 %30, i32 %31)
  store i32 1, i32* @atfork_registered, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @__sigev_thread_init.inited, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = call i32 @_pthread_attr_init(i32* @sigev_default_attr)
  %38 = load i32, i32* @PTHREAD_SCOPE_SYSTEM, align 4
  %39 = call i32 @_pthread_attr_setscope(i32* @sigev_default_attr, i32 %38)
  %40 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %41 = call i32 @_pthread_attr_setdetachstate(i32* @sigev_default_attr, i32 %40)
  store i32 1, i32* @__sigev_thread_init.inited, align 4
  br label %42

42:                                               ; preds = %36, %33
  %43 = call i32* @sigev_thread_create(i32 0)
  store i32* %43, i32** @sigev_default_thread, align 8
  ret void
}

declare dso_local i32 @_pthread_mutexattr_init(i32*) #1

declare dso_local i32 @_pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @_pthread_mutex_init(i32, i32*) #1

declare dso_local i32 @_pthread_mutexattr_destroy(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @_pthread_atfork(i32, i32, i32) #1

declare dso_local i32 @_pthread_attr_init(i32*) #1

declare dso_local i32 @_pthread_attr_setscope(i32*, i32) #1

declare dso_local i32 @_pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32* @sigev_thread_create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
