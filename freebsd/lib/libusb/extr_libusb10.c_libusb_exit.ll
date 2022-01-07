; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i32*, i32 }

@NO_THREAD = common dso_local global i64 0, align 8
@default_context_lock = common dso_local global i32 0, align 4
@usbi_default_context = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libusb_exit(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = call %struct.TYPE_10__* @GET_CONTEXT(%struct.TYPE_10__* %5)
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = icmp eq %struct.TYPE_10__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NO_THREAD, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = call i32 @HOTPLUG_LOCK(%struct.TYPE_10__* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* @NO_THREAD, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = call i32 @HOTPLUG_UNLOCK(%struct.TYPE_10__* %25)
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @pthread_join(i64 %27, i8** %4)
  br label %29

29:                                               ; preds = %16, %10
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 5
  %33 = call i32 @libusb10_remove_pollfd(%struct.TYPE_10__* %30, i32* %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = call i32 @pthread_mutex_destroy(i32* %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = call i32 @pthread_mutex_destroy(i32* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = call i32 @pthread_cond_destroy(i32* %53)
  %55 = call i32 @pthread_mutex_lock(i32* @default_context_lock)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** @usbi_default_context, align 8
  %58 = icmp eq %struct.TYPE_10__* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %29
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @usbi_default_context, align 8
  br label %60

60:                                               ; preds = %59, %29
  %61 = call i32 @pthread_mutex_unlock(i32* @default_context_lock)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = call i32 @free(%struct.TYPE_10__* %62)
  br label %64

64:                                               ; preds = %60, %9
  ret void
}

declare dso_local %struct.TYPE_10__* @GET_CONTEXT(%struct.TYPE_10__*) #1

declare dso_local i32 @HOTPLUG_LOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @HOTPLUG_UNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @pthread_join(i64, i8**) #1

declare dso_local i32 @libusb10_remove_pollfd(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
