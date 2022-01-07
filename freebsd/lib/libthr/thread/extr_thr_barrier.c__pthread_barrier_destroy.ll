; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_barrier.c__pthread_barrier_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_barrier.c__pthread_barrier_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i32, i32 }
%struct.pthread = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THR_PSHARED_PTR = common dso_local global %struct.TYPE_8__* null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_barrier_destroy(%struct.TYPE_8__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__**, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.pthread*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %3, align 8
  %7 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %8 = icmp eq %struct.TYPE_8__** %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %98

15:                                               ; preds = %9
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @THR_PSHARED_PTR, align 8
  %19 = icmp eq %struct.TYPE_8__* %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %22 = call %struct.TYPE_8__* @__thr_pshared_offpage(%struct.TYPE_8__** %21, i32 0)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %4, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %26, align 8
  store i32 0, i32* %2, align 4
  br label %98

27:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %31

28:                                               ; preds = %15
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %27
  %32 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %32, %struct.pthread** %5, align 8
  %33 = load %struct.pthread*, %struct.pthread** %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = call i32 @THR_UMUTEX_LOCK(%struct.pthread* %33, i32* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.pthread*, %struct.pthread** %5, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = call i32 @THR_UMUTEX_UNLOCK(%struct.pthread* %42, i32* %44)
  %46 = load i32, i32* @EBUSY, align 4
  store i32 %46, i32* %2, align 4
  br label %98

47:                                               ; preds = %31
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %80, %47
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.pthread*, %struct.pthread** %5, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = call i32 @THR_UMUTEX_UNLOCK(%struct.pthread* %58, i32* %60)
  %62 = load i32, i32* @EBUSY, align 4
  store i32 %62, i32* %2, align 4
  br label %98

63:                                               ; preds = %50
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = call i32 @_thr_ucond_wait(i32* %70, i32* %72, i32* null, i32 0)
  %74 = load %struct.pthread*, %struct.pthread** %5, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = call i32 @THR_UMUTEX_LOCK(%struct.pthread* %74, i32* %76)
  br label %79

78:                                               ; preds = %63
  br label %81

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  br i1 true, label %50, label %81

81:                                               ; preds = %80, %78
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load %struct.pthread*, %struct.pthread** %5, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = call i32 @THR_UMUTEX_UNLOCK(%struct.pthread* %84, i32* %86)
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %88, align 8
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %3, align 8
  %93 = call i32 @__thr_pshared_destroy(%struct.TYPE_8__** %92)
  br label %97

94:                                               ; preds = %81
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = call i32 @free(%struct.TYPE_8__* %95)
  br label %97

97:                                               ; preds = %94, %91
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %55, %41, %25, %13
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_8__* @__thr_pshared_offpage(%struct.TYPE_8__**, i32) #1

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_UMUTEX_LOCK(%struct.pthread*, i32*) #1

declare dso_local i32 @THR_UMUTEX_UNLOCK(%struct.pthread*, i32*) #1

declare dso_local i32 @_thr_ucond_wait(i32*, i32*, i32*, i32) #1

declare dso_local i32 @__thr_pshared_destroy(%struct.TYPE_8__**) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
