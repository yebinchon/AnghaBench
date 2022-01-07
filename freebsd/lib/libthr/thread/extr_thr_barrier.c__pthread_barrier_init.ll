; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_barrier.c__pthread_barrier_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_barrier.c__pthread_barrier_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@INT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_PROCESS_PRIVATE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@THR_PSHARED_PTR = common dso_local global %struct.TYPE_12__* null, align 8
@USYNC_PROCESS_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_barrier_init(%struct.TYPE_12__** noalias %0, %struct.TYPE_11__** noalias %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %11 = icmp eq %struct.TYPE_12__** %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @INT_MAX, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %12, %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %23 = icmp eq %struct.TYPE_11__** %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp eq %struct.TYPE_11__* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PTHREAD_PROCESS_PRIVATE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %28, %24, %21
  %36 = call %struct.TYPE_12__* @calloc(i32 1, i32 4)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %8, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = icmp eq %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %4, align 4
  br label %80

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %43, align 8
  store i32 0, i32* %9, align 4
  br label %54

44:                                               ; preds = %28
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %46 = call %struct.TYPE_12__* @__thr_pshared_offpage(%struct.TYPE_12__** %45, i32 1)
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %8, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = icmp eq %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @EFAULT, align 4
  store i32 %50, i32* %4, align 4
  br label %80

51:                                               ; preds = %44
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @THR_PSHARED_PTR, align 8
  %53 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %53, align 8
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = call i32 @_thr_umutex_init(%struct.TYPE_13__* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = call i32 @_thr_ucond_init(%struct.TYPE_14__* %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %54
  %64 = load i32, i32* @USYNC_PROCESS_SHARED, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @USYNC_PROCESS_SHARED, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %63, %54
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %49, %39, %19
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_12__* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_12__* @__thr_pshared_offpage(%struct.TYPE_12__**, i32) #1

declare dso_local i32 @_thr_umutex_init(%struct.TYPE_13__*) #1

declare dso_local i32 @_thr_ucond_init(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
