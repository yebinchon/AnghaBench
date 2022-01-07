; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread.c_evthread_set_lock_callbacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread.c_evthread_set_lock_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evthread_lock_callbacks = type { i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [84 x i8] c"Trying to disable lock functions after they have been set up will probaby not work.\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Can't change lock callbacks once they have been initialized.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evthread_set_lock_callbacks(%struct.evthread_lock_callbacks* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evthread_lock_callbacks*, align 8
  %4 = alloca %struct.evthread_lock_callbacks*, align 8
  store %struct.evthread_lock_callbacks* %0, %struct.evthread_lock_callbacks** %3, align 8
  %5 = call %struct.evthread_lock_callbacks* (...) @evthread_get_lock_callbacks()
  store %struct.evthread_lock_callbacks* %5, %struct.evthread_lock_callbacks** %4, align 8
  %6 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %7 = icmp ne %struct.evthread_lock_callbacks* %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %10 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @event_warnx(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %8
  %16 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %17 = call i32 @memset(%struct.evthread_lock_callbacks* %16, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %100

18:                                               ; preds = %1
  %19 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %20 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %18
  %24 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %25 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %28 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %23
  %32 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %33 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %36 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %31
  %40 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %41 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %44 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %39
  %48 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %49 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %52 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %47
  %56 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %57 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %60 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %65 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %68 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %100

72:                                               ; preds = %63, %55, %47, %39, %31, %23
  %73 = call i32 @event_warnx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %100

74:                                               ; preds = %18
  %75 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %76 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %81 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %86 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %91 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %96 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %97 = call i32 @memcpy(%struct.evthread_lock_callbacks* %95, %struct.evthread_lock_callbacks* %96, i32 4)
  %98 = call i32 @event_global_setup_locks_(i32 1)
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %89, %84, %79, %74
  store i32 -1, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %94, %72, %71, %15
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.evthread_lock_callbacks* @evthread_get_lock_callbacks(...) #1

declare dso_local i32 @event_warnx(i8*) #1

declare dso_local i32 @memset(%struct.evthread_lock_callbacks*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks*, i32) #1

declare dso_local i32 @event_global_setup_locks_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
