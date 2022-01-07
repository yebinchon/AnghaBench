; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_run_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_run_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { void (i64)*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timer_list*, align 8
  %4 = alloca void (i64)*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.timer_list*
  store %struct.timer_list* %6, %struct.timer_list** %3, align 8
  %7 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %8 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %7, i32 0, i32 2
  %9 = call i32 @mtx_lock_spin(i32* %8)
  %10 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %11 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %10, i32 0, i32 3
  %12 = call i64 @callout_pending(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %16 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %15, i32 0, i32 2
  %17 = call i32 @mtx_unlock_spin(i32* %16)
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %20 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %19, i32 0, i32 3
  %21 = call i32 @callout_active(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %25 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %24, i32 0, i32 2
  %26 = call i32 @mtx_unlock_spin(i32* %25)
  br label %41

27:                                               ; preds = %18
  %28 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %29 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %28, i32 0, i32 3
  %30 = call i32 @callout_deactivate(i32* %29)
  %31 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %32 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %31, i32 0, i32 0
  %33 = load void (i64)*, void (i64)** %32, align 8
  store void (i64)* %33, void (i64)** %4, align 8
  %34 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %35 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %34, i32 0, i32 2
  %36 = call i32 @mtx_unlock_spin(i32* %35)
  %37 = load void (i64)*, void (i64)** %4, align 8
  %38 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %39 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  call void %37(i64 %40)
  br label %41

41:                                               ; preds = %27, %23, %14
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i32 @callout_deactivate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
