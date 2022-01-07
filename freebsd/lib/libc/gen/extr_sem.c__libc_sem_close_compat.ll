; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem.c__libc_sem_close_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sem.c__libc_sem_close_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@named_sems_mtx = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_libc_sem_close_compat(%struct.TYPE_7__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__**, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  %4 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %5 = call i64 @sem_check_validity(%struct.TYPE_7__** %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %38

16:                                               ; preds = %8
  %17 = call i32 @_pthread_mutex_lock(i32* @named_sems_mtx)
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @ksem_close(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @_pthread_mutex_unlock(i32* @named_sems_mtx)
  store i32 -1, i32* %2, align 4
  br label %38

26:                                               ; preds = %16
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32, i32* @entry, align 4
  %30 = call i32 @LIST_REMOVE(%struct.TYPE_7__* %28, i32 %29)
  %31 = call i32 @_pthread_mutex_unlock(i32* @named_sems_mtx)
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 @sem_free(%struct.TYPE_7__* %33)
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %37 = call i32 @free(%struct.TYPE_7__** %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %26, %24, %14, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @sem_check_validity(%struct.TYPE_7__**) #1

declare dso_local i32 @_pthread_mutex_lock(i32*) #1

declare dso_local i64 @ksem_close(i32) #1

declare dso_local i32 @_pthread_mutex_unlock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sem_free(%struct.TYPE_7__*) #1

declare dso_local i32 @free(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
