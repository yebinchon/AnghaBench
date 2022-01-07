; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-app-hotplug.c_cvmx_app_hotplug_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-app-hotplug.c_cvmx_app_hotplug_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@cvmx_app_hotplug_info_ptr = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"waiting for cnt=%lld\0A\00", align 1
@cvmx_app_hotplug_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"ERROR: This application is not registered for hotplug\0A\00", align 1
@CVMX_IRQ_MBOX0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_app_hotplug_activate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %2, align 4
  store i32 10000000, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cvmx_app_hotplug_info_ptr, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = srem i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %16, %9
  br label %5

21:                                               ; preds = %5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cvmx_app_hotplug_info_ptr, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 (...) @cvmx_get_core_num()
  %26 = shl i64 1, %25
  %27 = and i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = call %struct.TYPE_4__* (...) @cvmx_sysinfo_get()
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %4, align 8
  %31 = call i64 (...) @cvmx_get_core_num()
  %32 = shl i64 1, %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = or i64 %35, %32
  store i64 %36, i64* %34, align 8
  br label %39

37:                                               ; preds = %21
  %38 = call i32 (...) @__cvmx_app_hotplug_sync()
  br label %39

39:                                               ; preds = %37, %29
  %40 = call i32 @cvmx_spinlock_lock(i32* @cvmx_app_hotplug_lock)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cvmx_app_hotplug_info_ptr, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = call i32 @cvmx_spinlock_unlock(i32* @cvmx_app_hotplug_lock)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %56

46:                                               ; preds = %39
  %47 = load i32, i32* @CVMX_IRQ_MBOX0, align 4
  %48 = call i32 @cvmx_interrupt_unmask_irq(i32 %47)
  %49 = call i64 (...) @cvmx_get_core_num()
  %50 = shl i64 1, %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cvmx_app_hotplug_info_ptr, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = or i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = call i32 @cvmx_spinlock_unlock(i32* @cvmx_app_hotplug_lock)
  store i32 0, i32* %1, align 4
  br label %56

56:                                               ; preds = %46, %43
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @cvmx_get_core_num(...) #1

declare dso_local %struct.TYPE_4__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @__cvmx_app_hotplug_sync(...) #1

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

declare dso_local i32 @cvmx_interrupt_unmask_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
