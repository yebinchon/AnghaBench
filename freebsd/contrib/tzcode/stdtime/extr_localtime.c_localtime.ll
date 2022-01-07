; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_localtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_localtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@__isthreaded = common dso_local global i64 0, align 8
@localtime_once = common dso_local global i32 0, align 4
@localtime_key_init = common dso_local global i32 0, align 4
@localtime_key_error = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@localtime_key = common dso_local global i32 0, align 4
@lcl_rwlock = common dso_local global i32 0, align 4
@tm = common dso_local global %struct.tm zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @localtime(i32* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tm*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i64, i64* @__isthreaded, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load i32, i32* @localtime_key_init, align 4
  %9 = call i32 @_pthread_once(i32* @localtime_once, i32 %8)
  %10 = load i64, i64* @localtime_key_error, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i64, i64* @localtime_key_error, align 8
  store i64 %13, i64* @errno, align 8
  store %struct.tm* null, %struct.tm** %2, align 8
  br label %41

14:                                               ; preds = %7
  %15 = load i32, i32* @localtime_key, align 4
  %16 = call %struct.tm* @_pthread_getspecific(i32 %15)
  store %struct.tm* %16, %struct.tm** %4, align 8
  %17 = load %struct.tm*, %struct.tm** %4, align 8
  %18 = icmp eq %struct.tm* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = call i64 @malloc(i32 4)
  %21 = inttoptr i64 %20 to %struct.tm*
  store %struct.tm* %21, %struct.tm** %4, align 8
  %22 = icmp eq %struct.tm* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store %struct.tm* null, %struct.tm** %2, align 8
  br label %41

24:                                               ; preds = %19
  %25 = load i32, i32* @localtime_key, align 4
  %26 = load %struct.tm*, %struct.tm** %4, align 8
  %27 = call i32 @_pthread_setspecific(i32 %25, %struct.tm* %26)
  br label %28

28:                                               ; preds = %24, %14
  %29 = call i32 @_RWLOCK_RDLOCK(i32* @lcl_rwlock)
  %30 = call i32 @tzset_basic(i32 1)
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.tm*, %struct.tm** %4, align 8
  %33 = call %struct.tm* @localsub(i32* %31, i64 0, %struct.tm* %32)
  store %struct.tm* %33, %struct.tm** %4, align 8
  %34 = call i32 @_RWLOCK_UNLOCK(i32* @lcl_rwlock)
  br label %39

35:                                               ; preds = %1
  %36 = call i32 @tzset_basic(i32 0)
  %37 = load i32*, i32** %3, align 8
  %38 = call %struct.tm* @localsub(i32* %37, i64 0, %struct.tm* @tm)
  store %struct.tm* %38, %struct.tm** %4, align 8
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.tm*, %struct.tm** %4, align 8
  store %struct.tm* %40, %struct.tm** %2, align 8
  br label %41

41:                                               ; preds = %39, %23, %12
  %42 = load %struct.tm*, %struct.tm** %2, align 8
  ret %struct.tm* %42
}

declare dso_local i32 @_pthread_once(i32*, i32) #1

declare dso_local %struct.tm* @_pthread_getspecific(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @_pthread_setspecific(i32, %struct.tm*) #1

declare dso_local i32 @_RWLOCK_RDLOCK(i32*) #1

declare dso_local i32 @tzset_basic(i32) #1

declare dso_local %struct.tm* @localsub(i32*, i64, %struct.tm*) #1

declare dso_local i32 @_RWLOCK_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
