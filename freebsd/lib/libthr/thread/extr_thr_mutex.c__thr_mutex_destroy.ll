; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__thr_mutex_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__thr_mutex_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@THR_MUTEX_DESTROYED = common dso_local global %struct.TYPE_13__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@THR_PSHARED_PTR = common dso_local global %struct.TYPE_13__* null, align 8
@UMUTEX_RB_OWNERDEAD = common dso_local global i64 0, align 8
@UMUTEX_RB_NOTRECOV = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_thr_mutex_destroy(%struct.TYPE_13__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__**, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %3, align 8
  %7 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** @THR_MUTEX_DESTROYED, align 8
  %11 = icmp ult %struct.TYPE_13__* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @THR_MUTEX_DESTROYED, align 8
  %16 = icmp eq %struct.TYPE_13__* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %6, align 4
  br label %67

19:                                               ; preds = %13
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** @THR_PSHARED_PTR, align 8
  %22 = icmp eq %struct.TYPE_13__* %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %25 = call %struct.TYPE_13__* @__thr_pshared_offpage(%struct.TYPE_13__** %24, i32 0)
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %5, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = icmp ne %struct.TYPE_13__* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UMUTEX_RB_OWNERDEAD, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = call i32 (...) @_get_curthread()
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = call i32 @mutex_assert_not_owned(i32 %36, %struct.TYPE_13__* %37)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %41 = call i32 @__thr_pshared_destroy(%struct.TYPE_13__** %40)
  br label %42

42:                                               ; preds = %39, %23
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @THR_MUTEX_DESTROYED, align 8
  %44 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %44, align 8
  store i32 0, i32* %2, align 4
  br label %70

45:                                               ; preds = %19
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = call i64 @PMUTEX_OWNER_ID(%struct.TYPE_13__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UMUTEX_RB_NOTRECOV, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @EBUSY, align 4
  store i32 %57, i32* %6, align 4
  br label %66

58:                                               ; preds = %49, %45
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** @THR_MUTEX_DESTROYED, align 8
  %60 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %60, align 8
  %61 = call i32 (...) @_get_curthread()
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = call i32 @mutex_assert_not_owned(i32 %61, %struct.TYPE_13__* %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = call i32 @__thr_free(%struct.TYPE_13__* %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %58, %56
  br label %67

67:                                               ; preds = %66, %17
  br label %68

68:                                               ; preds = %67, %12
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %42
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_13__* @__thr_pshared_offpage(%struct.TYPE_13__**, i32) #1

declare dso_local i32 @mutex_assert_not_owned(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @_get_curthread(...) #1

declare dso_local i32 @__thr_pshared_destroy(%struct.TYPE_13__**) #1

declare dso_local i64 @PMUTEX_OWNER_ID(%struct.TYPE_13__*) #1

declare dso_local i32 @__thr_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
