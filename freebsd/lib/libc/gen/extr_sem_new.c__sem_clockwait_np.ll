; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem_new.c__sem_clockwait_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem_new.c__sem_clockwait_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.timespec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_sem_clockwait_np(%struct.TYPE_5__* noalias %0, i32 %1, i32 %2, %struct.timespec* %3, %struct.timespec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca %struct.timespec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.timespec* %3, %struct.timespec** %10, align 8
  store %struct.timespec* %4, %struct.timespec** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = call i64 @sem_check_validity(%struct.TYPE_5__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %72

18:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  %19 = call i32 (...) @_pthread_testcancel()
  br label %20

20:                                               ; preds = %60, %18
  br label %21

21:                                               ; preds = %38, %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = call i64 @USEM_COUNT(i32 %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i64 @atomic_cmpset_acq_int(i32* %31, i32 %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %72

38:                                               ; preds = %28
  br label %21

39:                                               ; preds = %21
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (...) @_pthread_testcancel()
  br label %70

44:                                               ; preds = %39
  %45 = load %struct.timespec*, %struct.timespec** %10, align 8
  %46 = icmp ne %struct.timespec* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.timespec*, %struct.timespec** %10, align 8
  %49 = getelementptr inbounds %struct.timespec, %struct.timespec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 1000000000
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.timespec*, %struct.timespec** %10, align 8
  %54 = getelementptr inbounds %struct.timespec, %struct.timespec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %47
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %72

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %44
  %61 = call i32 @_pthread_cancel_enter(i32 1)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.timespec*, %struct.timespec** %10, align 8
  %67 = load %struct.timespec*, %struct.timespec** %11, align 8
  %68 = call i32 @usem_wait(%struct.TYPE_6__* %63, i32 %64, i32 %65, %struct.timespec* %66, %struct.timespec* %67)
  store i32 %68, i32* %13, align 4
  %69 = call i32 @_pthread_cancel_leave(i32 0)
  br label %20

70:                                               ; preds = %42
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %57, %37, %17
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i64 @sem_check_validity(%struct.TYPE_5__*) #1

declare dso_local i32 @_pthread_testcancel(...) #1

declare dso_local i64 @USEM_COUNT(i32) #1

declare dso_local i64 @atomic_cmpset_acq_int(i32*, i32, i32) #1

declare dso_local i32 @_pthread_cancel_enter(i32) #1

declare dso_local i32 @usem_wait(%struct.TYPE_6__*, i32, i32, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @_pthread_cancel_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
