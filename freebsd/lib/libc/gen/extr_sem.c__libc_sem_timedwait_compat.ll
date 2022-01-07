; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem.c__libc_sem_timedwait_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem.c__libc_sem_timedwait_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.timespec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@sem_cancel_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_libc_sem_timedwait_compat(%struct.TYPE_5__** noalias %0, %struct.timespec* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %9 = call i64 @sem_check_validity(%struct.TYPE_5__** %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %93

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = call i32 @_pthread_cancel_enter(i32 1)
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ksem_wait(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i32 @_pthread_cancel_leave(i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %93

30:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  %31 = call i32 (...) @_pthread_testcancel()
  br label %32

32:                                               ; preds = %71, %30
  br label %33

33:                                               ; preds = %49, %32
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i64 @atomic_cmpset_acq_int(i32* %42, i32 %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %93

49:                                               ; preds = %39
  br label %33

50:                                               ; preds = %33
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @_pthread_testcancel()
  br label %91

55:                                               ; preds = %50
  %56 = load %struct.timespec*, %struct.timespec** %5, align 8
  %57 = icmp ne %struct.timespec* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.timespec*, %struct.timespec** %5, align 8
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 1000000000
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.timespec*, %struct.timespec** %5, align 8
  %65 = getelementptr inbounds %struct.timespec, %struct.timespec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63, %58
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %93

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = call i32 @atomic_add_int(i32* %74, i32 1)
  %76 = load i32, i32* @sem_cancel_handler, align 4
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %78 = call i32 @pthread_cleanup_push(i32 %76, %struct.TYPE_5__** %77)
  %79 = call i32 @_pthread_cancel_enter(i32 1)
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load %struct.timespec*, %struct.timespec** %5, align 8
  %84 = call i32 @_umtx_wait_uint(i32* %82, i32 0, %struct.timespec* %83)
  store i32 %84, i32* %7, align 4
  %85 = call i32 @_pthread_cancel_leave(i32 0)
  %86 = call i32 @pthread_cleanup_pop(i32 0)
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = call i32 @atomic_add_int(i32* %89, i32 -1)
  br label %32

91:                                               ; preds = %53
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %68, %48, %18, %11
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @sem_check_validity(%struct.TYPE_5__**) #1

declare dso_local i32 @_pthread_cancel_enter(i32) #1

declare dso_local i32 @ksem_wait(i32) #1

declare dso_local i32 @_pthread_cancel_leave(i32) #1

declare dso_local i32 @_pthread_testcancel(...) #1

declare dso_local i64 @atomic_cmpset_acq_int(i32*, i32, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @pthread_cleanup_push(i32, %struct.TYPE_5__**) #1

declare dso_local i32 @_umtx_wait_uint(i32*, i32, %struct.timespec*) #1

declare dso_local i32 @pthread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
